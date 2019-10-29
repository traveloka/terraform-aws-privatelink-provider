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
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner"
}

variable "service_name" {
  type        = "string"
  description = "Stack name of the Service Endpoint"
}

variable "description" {
  type        = "string"
  default     = ""
  description = "Description of the Service Endpoint"
}

variable "environment" {
  type        = "string"
  description = "Will be used in resources' Environment tag"
}

variable "product_domain" {
  type        = "string"
  description = "Abbreviation of the product domain the created resources belong to"
}
