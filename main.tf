provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source     = "./module/vpc"
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidrs[terraform.workspace]
}

module "iam_role" {
  source    = "./module/aws_iam_role"
  role_name = var.role_name
}

module "subnet" {
  source  = "./module/subnet"
  vpc_id  = module.vpc.vpc_id
  subnets = var.subnets[terraform.workspace]
}
