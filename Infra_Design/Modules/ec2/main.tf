resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = var.name
  }
}
