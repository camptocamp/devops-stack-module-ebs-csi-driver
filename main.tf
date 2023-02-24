resource "null_resource" "dependencies" {
  triggers = var.dependency_ids
}

resource "argocd_project" "this" {
  metadata {
    name      = "ebs-csi-driver"
    namespace = var.argocd_namespace
    annotations = {
      "devops-stack.io/argocd_namespace" = var.argocd_namespace
    }
  }

  spec {
    description  = "ebs-csi-driver application project"
    source_repos = ["https://github.com/camptocamp/devops-stack-module-ebs-csi-driver.git"]

    destination {
      name      = "in-cluster"
      namespace = var.namespace
    }

    orphaned_resources {
      warn = true
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}

data "utils_deep_merge_yaml" "values" {
  input = [for i in concat(local.helm_values, var.helm_values) : yamlencode(i)]
}

module "iam_assumable_role_ebs" {
  source                     = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version                    = "~> 5.0" # TODO Upgrade and test with newer version
  create_role                = var.iam_role_arn != null ? true : false
  number_of_role_policy_arns = 1
  role_name                  = format("ebs-csi-driver-%s", var.cluster_name)
  provider_url               = replace(var.cluster_oidc_issuer_url, "https://", "")
  role_policy_arns           = ["arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"] # Use the default IAM policy provided by AWS

  # List of ServiceAccounts that have permission to attach to this IAM role
  oidc_fully_qualified_subjects = [
    "system:serviceaccount:${var.namespace}:ebs-csi-controller-sa",
  ]
}

resource "argocd_application" "this" {
  metadata {
    name      = "ebs-csi-driver"
    namespace = var.argocd_namespace
  }

  timeouts {
    create = "15m"
    delete = "15m"
  }

  wait = var.app_autosync == { "allow_empty" = tobool(null), "prune" = tobool(null), "self_heal" = tobool(null) } ? false : true

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = "https://github.com/camptocamp/devops-stack-module-ebs-csi-driver.git"
      path            = "charts/ebs-csi-driver"
      target_revision = var.target_revision
      helm {
        values = data.utils_deep_merge_yaml.values.output
      }
    }

    destination {
      name      = "in-cluster"
      namespace = var.namespace
    }

    sync_policy {
      automated = var.app_autosync

      retry {
        backoff = {
          duration     = ""
          max_duration = ""
        }
        limit = "0"
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }

  depends_on = [
    resource.null_resource.dependencies,
  ]
}

resource "null_resource" "this" {
  depends_on = [
    resource.argocd_application.this,
  ]
}
