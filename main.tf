resource "aws_vpc_endpoint_service" "service_provider" {
  acceptance_required        = "${var.acceptance_required}"
  network_load_balancer_arns = ["${var.nlb_arns}"]

  tags = {
    Name             = "${var.service_name}"
    Description      = "${var.description}"
    Environment      = "${var.environment}"
    ProductDomain    = "${var.product_domain}"
    ManagedBy        = "terraform"
  }
}

resource "aws_vpc_endpoint_service_allowed_principal" "service_provider" {
  vpc_endpoint_service_id = "${aws_vpc_endpoint_service.service_provider.id}"
  count                   = "${length(var.allowed_principals)}"
  principal_arn           = "${element(var.allowed_principals, count.index)}"

}
