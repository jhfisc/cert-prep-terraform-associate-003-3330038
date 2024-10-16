terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "east"
  # Configuration options
}

provider "aws" {
  region = "us-west-1"
  alias  = "west"
  # Configuration options
}