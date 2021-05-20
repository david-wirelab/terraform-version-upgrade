resource "aws_vpc" "default" {
  cidr_block           = "${var.vpc_cidr_block}" # this is a line that should be changed during the upgrade
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-${local.naming_suffix}"
  }
}

resource "aws_subnet" "default" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = "${var.vpc_subnet_cidr_block}" # this is a line that should be changed during the upgrade
  map_public_ip_on_launch = false
  availability_zone       = "${var.az}" # this is a line that should be changed during the upgrade

  tags = {
    Name = "subnet-${local.naming_suffix}"
  }
}
