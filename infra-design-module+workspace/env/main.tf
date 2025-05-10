provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "../modules/vpc"
  cidr_block = var.vpc_cidr
  name       = "vpc-${terraform.workspace}"
}

module "key_pair" {
  source        = "../modules/key_pair"
  key_pair_name = var.key_pair_name
}

module "ec2" {
  source        = "../modules/ec2"
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  key_name      = module.key_pair.key_pair_name
}
