provider "aws" {
  region     = "eu-west-2"
  access_key = var.KEY    # this is a line that should be changed during the upgrade
  secret_key = var.SECRET # this is a line that should be changed during the upgrade
}

locals {
  naming_suffix = "tf-upgrade"
}
