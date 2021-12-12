terraform {
  required_version = "0.15.1"

  required_providers {
    aws = {
      version = "~> 3.0"
      source  = "hashicorp/aws"
    }
  }
}
