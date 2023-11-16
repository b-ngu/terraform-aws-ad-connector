resource "aws_directory_service_directory" "ad_connector" {
  name     = var.ad_name
  password = var.ad_password
  size     = var.size
  edition  = var.edition

  connect_settings {
    vpc_id = var.vpc_id
    subnet_ids = var.subnet_ids
    customer_dns_ips = var.customer_dns_ips
    customer_username = var.customer_username
  }

  tags = merge(
    { "Name" = "${local.resource_prefix}-ad-connector" },
    var.tags,
  )
}
