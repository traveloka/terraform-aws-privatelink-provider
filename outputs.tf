output "service_provider_name" {
  description = "The name of VPC Endpoint Service"
  value       = aws_vpc_endpoint_service.service_provider.service_name
}
