remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "wl-tf-upgrade-terraform-state"
    key            = "nonprod/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state"
  }
}
