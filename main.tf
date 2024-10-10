provider "aws" {
  region = "us-west-2"
}

module "vpc_example" {
  source       = "./vpc_module"
  vpc_cidr     = var.vpc_cidr
  project_name = var.project_name
  region       = "us-west-1"
}

output "vpc_id" {
  value = module.vpc_example.vpc_id
}