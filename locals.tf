locals {
  helm_values = [{
    "aws-ebs-csi-driver" = {
      controller = {
        serviceAccount = {
          annotations = {
            "eks.amazonaws.com/role-arn" = var.iam_role_arn != null ? var.iam_role_arn : module.iam_assumable_role_ebs.iam_role_arn
          }
        }
      }
    }
  }]
}
