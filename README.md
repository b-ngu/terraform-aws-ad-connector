# terraform-aws-ad-connector

## Summary

Terraform module which creates AD Connector resources on AWS.

This module is designed to provision an AD Connector for integrating AWS resources with an existing Active Directory (AD) environment. It allows easy integration with a network on AWS and an on-premises AD.

## Helpful AWS Documentation Links

* [AWS Directory Service: AD Connector](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_ad_connector.html)
* [Setting up AD Connector](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/gsg_create_ad_connector.html)

## Example Usage

```hcl
module "ad_connector" {
  source     = "path_to_this_module"
  ad_name    = "example-ad-name"
  ad_password = "example-password"
  size       = "Small"
  vpc_id     = "vpc-0xxxxxxx"
  subnet_ids = ["subnet-xxxxxxx", "subnet-yyyyyyy"]
}
```

## AD Connector Components
1. Directory Name and Password: Credentials for the AD Connector to connect to the existing AD.
2. Size: Size of the AD Connector (Small or Large).
3. VPC Configuration: Specifies the VPC and subnets in which the AD Connector is deployed.

## AD Connector Setup
This module sets up an AD Connector in the specified AWS VPC. It requires access to an existing AD environment and network configuration details such as VPC and subnet IDs.

## Customizing the AD Connector
While this module provides a basic setup for an AD Connector, AWS allows various configurations and settings to be adjusted. Review the AWS documentation and tailor the module to fit specific networking and security requirements.

## Tags
To add custom tags to the AD Connector, include a tags map in the module definition:

```

module "ad_connector" {
  source     = "path_to_this_module" {

    ..

    Environment = "Production"
    Project     = "AD Integration"
  }
}

```

## Examples

* [AD Connector](./examples/connector)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.28 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.28 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_directory_service_directory.ad_connector](https://registry.terraform.io/providers/hashicorp/aws

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contact"></a> [contact](#input_contact) | (Required) The contact for this resource. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input_environment) | (Required) The environment where this resource will live. | `string` | n/a | yes |
| <a name="input_team"></a> [team](#input_team) | (Required) The team responsible for this resource. | `string` | n/a | yes |
| <a name="input_purpose"></a> [purpose](#input_purpose) | (Required) The purpose for this resource. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| <a name="input_ad_name"></a> [ad_name](#input_ad_name) | The name for the AD Connector. | `string` | n/a | yes |
| <a name="input_ad_password"></a> [ad_password](#input_ad_password) | The password for the AD Connector. | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input_size) | The size of the AD Connector. | `string` | n/a | yes |
| <a name="input_edition"></a> [edition](#input_edition) | The edition of the AD Connector. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc_id](#input_vpc_id) | The ID of the VPC where the AD Connector is deployed. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet_ids](#input_subnet_ids) | The subnet IDs for the AD Connector. | `list(string)` | n/a | yes |
| <a name="input_customer_dns_ips"></a> [customer_dns_ips](#input_customer_dns_ips) | DNS IP addresses for the AD Connector. | `list(string)` | n/a | yes |
| <a name="input_customer_username"></a> [customer_username](#input_customer_username) | Username for the AD Connector. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ad_connector_id"></a> [ad_connector_id](#output_ad_connector_id) | The ID of the AD Connector. |
| <a name="output_ad_connector_dns_ip_addresses"></a> [ad_connector_dns_ip_addresses](#output_ad_connector_dns_ip_addresses) | The DNS IP addresses of the AD Connector. |

<!-- END_TF_DOCS -->