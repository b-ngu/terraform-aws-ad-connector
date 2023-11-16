variable "contact" {
  type        = string
  description = "(Required) The contact for this resource."
}

variable "environment" {
  type        = string
  description = "(Required) The environment where this resource will live."
}

variable "team" {
  type        = string
  description = "(Required) The team responsible for this resource."
}

variable "purpose" {
  type        = string
  description = "(Required) The purpose for this resource."
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "ad_name" {
  type        = string
  description = "The name for the AD Connector"
}

variable "ad_password" {
  type        = string
  description = "The password for the AD Connector"
}

variable "size" {
  type        = string
  description = "The size of the AD Connector"
}

variable "edition" {
  type        = string
  description = "The edition of the AD Connector"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the AD Connector is deployed"
}

variable "subnet_ids" {
  type        = list(string)
  description = "The subnet IDs for the AD Connector"
}

variable "customer_dns_ips" {
  type        = list(string)
  description = "DNS IP addresses for the AD Connector"
}

variable "customer_username" {
  type        = string
  description = "Username for the AD Connector"
}