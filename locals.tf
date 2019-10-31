locals {
  default_tags = {
    Name          = "${var.service_name}-vpces"
    Service       = "${var.service_name}"
    Description   = "${var.description}"
    Environment   = "${var.environment}"
    ProductDomain = "${var.product_domain}"
    ManagedBy     = "terraform"
  }
}
