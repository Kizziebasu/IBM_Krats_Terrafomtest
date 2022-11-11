variable "hw" {
  type = string
  default = "t2.nano"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myawsserver-krats-var" {
  ami = "ami-09d3b3274b6c5d4aa"
  instance_type = var.hw
  tags = {
    Name = "krats-aws-ec2-instance-v2"
    Env = "test"
    Owner = "kratika-mishra"
  }
}
