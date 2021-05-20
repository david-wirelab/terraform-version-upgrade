# Terraform Version Upgrade

This repository is used as a POC to upgrade legacy Terraform code (v0.11.14)
to newer versions all the way to v0.15.0.
The PRs and commit's will capture the changes within the Terraform files as well as the Docker images in use.

## Dependencies

- The POC depends on a custom [Docker container](https://hub.docker.com/repository/docker/wirelab/docker-terragrunt) image running Terragrunt and Terraform.
The images are as follows:
- [Terraform v0.11.14](https://hub.docker.com/layers/wirelab/docker-terragrunt/v0.11.14/images/sha256-6ade2b5b47d58f2363879ca19a5a45e850de723810a0b8a7282c2ba27beef14c?context=repo)
- [Terraform v0.12.0](https://hub.docker.com/layers/wirelab/docker-terragrunt/v0.12.0/images/sha256-d0636ccfb09ae666db19d47448f15d150d1d456c0e309f3c72ad47f08b9abf0a?context=repo)
- [Terraform v0.13.0](https://hub.docker.com/layers/wirelab/docker-terragrunt/v0.13.0/images/sha256-a47144674b4d00ff6ceed298eb2fa6eae9a95a56ea82fc52ce0b56e186f824fb?context=explore)
- Also it depends on various versions of [Terraform and Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/supported-terraform-versions/)
- Access to [Drone CI/CD](https://cloud.drone.io)
- Access to AWS and an IAM user with sufficient permissions

## Development flow

1. The process starts with having a legacy piece of code written in Terraform v0.11.14.
2. Using the Docker container with TF version 0.11.14 installed and CI/CD the resources are deployed to AWS
3. Code upgraded to version 0.12.0 using Hashicorp's upgrade tool
4. Resources are re-deployed again and the expectation is to see no changes to the infrastructure
5. From here on steps 2-4 are repeated to get to Terraform version 0.15.0
