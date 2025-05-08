provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = "${terraform.workspace}-vpc"
  public_subnet_cidr   = var.public_subnet_cidr
  availability_zone    = var.availability_zone
}
