variable "KEY" {
}

variable "SECRET" {
}

variable "vpc_cidr_block" {
  default = "10.30.0.0/16"
}

variable "vpc_subnet_cidr_block" {
  default = "10.30.1.0/24"
}

variable "az" {
  default = "eu-west-2a"
}
