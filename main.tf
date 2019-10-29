resource "aws_vpc_endpoint_service" "service_provider" {
  acceptance_required        = "${var.acceptance_required}"
  network_load_balancer_arns = ["${var.nlb_arns}"]
  allowed_principals         = ["${var.allowed_principals}"]

  tags = {
    Name          = "${var.service_name}-vpces"
    Service       = "${var.service_name}"
    Description   = "${var.description}"
    Environment   = "${var.environment}"
    ProductDomain = "${var.product_domain}"
    ManagedBy     = "terraform"
  }
}
