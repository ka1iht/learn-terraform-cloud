provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
