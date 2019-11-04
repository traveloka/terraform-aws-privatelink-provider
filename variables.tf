variable "allowed_principals" {
  default     = []
  type        = "list"
  description = "List of all whitelisted AWS principals which will create Interface VPC Endpoint to connect to this Endpoint Service"
}

variable "nlb_arns" {
  type        = "list"
  description = "List of all NLB ARNs which associate with the Endpoint Service"
}

variable "acceptance_required" {
  default     = false
  type        = "string"
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner"
}

variable "service_name" {
  type        = "string"
  description = "Stack name of the Endpoint Service"
}

variable "description" {
  type        = "string"
  default     = ""
  description = "Description of the Endpoint Service"
}

variable "environment" {
  type        = "string"
  description = "Will be used in resources' Environment tag"
}

variable "product_domain" {
  type        = "string"
  description = "Abbreviation of the product domain the created resources belong to"
}

variable "additional_tags" {
  default     = {}
  type        = "map"
  description = "Additional tags to be added to the endpoint service"
}
