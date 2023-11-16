output "ad_connector_id" {
  value = aws_directory_service_directory.ad_connector.id
}

output "ad_connector_dns_ip_addresses" {
  value = aws_directory_service_directory.ad_connector.dns_ip_addresses
}
