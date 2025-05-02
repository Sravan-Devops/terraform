resource "aws_instance" "web" {
  ami           = "ami-01fc98868662094f9"
  instance_type = "t2.micro"


  tags = {
    Name = "DevOps-EC2"
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "key_name" {
  description = "EC2 Key pair name for SSH access"
  type        = string
}
