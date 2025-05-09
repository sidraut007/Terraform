provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source              = "../../modules/vpc"
  vpc_cidr_block      = "10.0.0.0/16"
  subnet_cidr_block   = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
  name_prefix         = "dev"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  name          = "dev-ec2"
}
