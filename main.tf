resource "aws_vpc_endpoint_service" "service_provider" {
  acceptance_required        = var.acceptance_required
  network_load_balancer_arns = var.nlb_arns
  allowed_principals         = var.allowed_principals

  tags = merge(var.additional_tags, local.default_tags)
}
