#######################
## Standard variables
#######################

variable "cluster_name" {
  description = "Name given to the cluster. Value used for naming some the resources created by the module."
  type        = string
  default     = "cluster"
}

variable "argocd_namespace" {
  description = "Namespace used by Argo CD where the Application and AppProject resources should be created."
  type        = string
}

variable "target_revision" {
  description = "Override of target revision of the application chart."
  type        = string
  default     = "v1.0.0-alpha.1" # x-release-please-version
}

variable "helm_values" {
  description = "Helm chart value overrides. They should be passed as a list of HCL structures."
  type        = any
  default     = []
}

variable "app_autosync" {
  description = "Automated sync options for the Argo CD Application resource."
  type = object({
    allow_empty = optional(bool)
    prune       = optional(bool)
    self_heal   = optional(bool)
  })
  default = {
    allow_empty = false
    prune       = true
    self_heal   = true
  }
}

variable "dependency_ids" {
  description = "IDs of the other modules on which this module depends on."
  type        = map(string)
  default     = {}
}

#######################
## Module variables
#######################

variable "name" {
  description = "Name used to override the chart name on deployment."
  type        = string
  default     = "ebs-csi-driver"
}

variable "iam_role_arn" {
  description = "ARN of an OIDC assumable IAM role that has access to the EBS volumes. When specified, this is added as an annotation to the EBS CSI driver controller ServiceAccount, to allow the driver to manage EBS access points for dynamic volumes provisioning. **If not specified, you need to specify the variable `cluster_oidc_issuer_url`.**"
  type        = string
  default     = null
}

variable "cluster_oidc_issuer_url" {
  description = "Cluster OIDC issuer URL used to create the OIDC assumable IAM role. **This variable is required to create a IAM role if you do not provide the variable `iam_role_arn`.**"
  type        = string
  default     = null
}

