provider "aws" {
  region = var.region
}

module "ad_connector" {
  source     = "../../"
  ad_name    = "example-ad-name"
  ad_password = "example-password"
  size       = "Small"
  vpc_id     = "vpc-0xxxxxxx"
  subnet_ids = ["subnet-xxxxxxx", "subnet-yyyyyyy"]

  contact     = var.contact
  environment = var.environment
  team        = var.team
  purpose     = var.purpose
}