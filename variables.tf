# tflint-ignore: terraform_unused_declarations
variable "dataplane_role_arn" {
  description = "The data plane assume role arn"
  type        = string
}
variable "dataplane_external_id" {
  description = "The external ID for dataplane assume role"
  type        = string
}
variable "cluster_name" {
  description = "Name of EKS cluster"
  type        = string
  default     = "tf-min"
}
variable "master_users" {
  description = "The master user to administer the cluster"
  type        = list(string)
  default     = [
    "arn:aws:iam::191286008734:user/dataplane-provisioning"
  ]
}