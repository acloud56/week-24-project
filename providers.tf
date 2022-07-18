terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "consul" {
    address  = "astdc-consul01p.dimensional.com:8500"
    scheme   = "http"
    path     = "tf/terraform.tfstate"
    lock     = true
    gzip     = false
    access_token = "ed90fe83-e476-3186-ad4c-0e2b79c80c92"
  }
}
