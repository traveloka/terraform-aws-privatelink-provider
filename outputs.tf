output "service_provider_name" {
  description = "The name of VPC Endpoint Service"
  value       = "${aws_vpc_endpoint_service.service-provider.service_name}"
}
