provider "aws" {
  region = "ap-southeast-1"
}

#################################################################################################
# Variable declaration. Change the default value with a valid value before you used this example
#################################################################################################
variable "nlb_arns" {
  description = "List of all ARNs of the NLBs which associate with the endpoint service"
  default     = ["arn:aws:elasticloadbalancing:ap-southeast-1:012345678901:loadbalancer/net/service-provider-nlb/01ab234c5d67e8f9"]
}

variable "allowed_principals" {
  description = "List of all whitelist AWS principals to connect to this endpoint"
  default     = ["arn:aws:iam::123456789012:root"]
}

variable "acceptance_required" {
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner"
  default     = false
}

#######################
# VPC Endpoint Service
#######################
module "service-provider" {
  source = "../"

  nlb_arns = "${var.nlb_arns}"

  # Optional
  allowed_principals  = "${var.allowed_principals}"
  acceptance_required = "${var.acceptance_required}"
}
