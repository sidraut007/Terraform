variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to start"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
}
