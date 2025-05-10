variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_pair_name" {
  default = "my-ec2-key"
}

variable "cidr_block" {
  default = "10.0.3.0/24"
}
