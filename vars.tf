variable "allowed_principals" {
  default     = []
  type        = "list"
  description = "List of all whitelist AWS principals to connect to this endpoint"
}

variable "nlb_arns" {
  type        = "list"
  description = "List of all NLB ARNs which associate with the endpoint service"
}

variable "acceptance_required" {
  default     = false
  type        = "boolean"
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner"
}
