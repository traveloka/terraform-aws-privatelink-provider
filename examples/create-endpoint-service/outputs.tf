output "service_provider_name" {
  description = "The name of VPC Endpoint Service"
  value       = "${module.service-provider.service_provider_name}"
}
