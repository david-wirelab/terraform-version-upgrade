terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "wl-tf-upgrade-terraform-state"
      key            = "nonprod/terraform.tfstate"
      region         = "eu-west-2"
      encrypt        = true
      dynamodb_table = "terraform-state"
      key            = "nonprod/terraform.tfstate"
    }
  }
}
