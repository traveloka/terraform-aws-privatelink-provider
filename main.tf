resource "aws_vpc_endpoint_service" "service-provider" {
  acceptance_required        = "${var.acceptance_required}"
  network_load_balancer_arns = ["${var.nlb_arns}"]
}

resource "aws_vpc_endpoint_service_allowed_principal" "service-provider" {
  vpc_endpoint_service_id = "${aws_vpc_endpoint_service.service-provider.id}"
  count                   = "${length(var.allowed_principals)}"
  principal_arn           = "${element(var.allowed_principals, count.index)}"
}
