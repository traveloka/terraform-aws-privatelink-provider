terraform-aws-privatelink-provider
====================================

A Terraform module which creates an AWS VPC Endpoint Service for service provider PrivateLink.

Usage
-----

```hcl
module "service-provider-privatelink" {
  source         = "github.com/traveloka/terraform-aws-privatelink-provider?ref=master"
  nlb_arns       = ["arn:aws:elasticloadbalancing:ap-southeast-1:012345678901:loadbalancer/net/service-provider-nlb/01ab234c5d67e8f9"]
  service_name   = "abctest"
  product_domain = "abc"
  environment    = "staging"
  description    = "VPC Endpoint Service for service abctest"

  # Optional
  allowed_principals  = ["arn:aws:iam::<aws-account-id>:root"]
  acceptance_required = false
}
```

Authors
-------

- [Febry Antonius](https://github.com/febryantonius)

License
-------

Apache 2 licensed. See LICENSE for full details.