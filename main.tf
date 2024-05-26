#Provider

provider "aws" {
  region = "eu-west-2"
}

#Resource

resource "aws_instance" "test" {
  ami = "ami-01f10c2d6bce70d90"
  instance_type = "t2.nano"
  count = "2"

#Name
tags = {
  Name = "testvm"
}

}
