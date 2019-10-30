provider "aws" {
  region = "ap-southeast-1"
}

#############################################################################################
# Local values declaration. Change the value with a valid value before you used this example
#############################################################################################
locals {
  nlb_arns            = ["arn:aws:elasticloadbalancing:ap-southeast-1:012345678901:loadbalancer/net/service-provider-nlb/01ab234c5d67e8f9"]
  allowed_principals  = ["arn:aws:iam::123456789012:root"]
  acceptance_required = false
  service_name        = abctest
}

#######################
# VPC Endpoint Service
#######################
module "service-provider" {
  source = "../../"

  nlb_arns = "${local.nlb_arns}"
  service_name   = "${local.service_name}"
  product_domain = "abc"
  environment    = "staging"
  description    = "VPC Endpoint Service for service ${local.service_name}"

  # Optional
  allowed_principals  = "${local.allowed_principals}"
  acceptance_required = "${local.acceptance_required}"
}
