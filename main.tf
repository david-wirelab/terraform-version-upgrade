terraform {
  backend "s3" {
    bucket         = "wl-tf-upgrade-terraform-state"
    key            = "nonprod/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
  }
}

provider "aws" {
  region     = "eu-west-2"
  version    = "~> 2.70"
  access_key = "${var.KEY}"    # this is a line that should be changed during the upgrade
  secret_key = "${var.SECRET}" # this is a line that should be changed during the upgrade
}

locals {
  naming_suffix = "tf-upgrade"
}
