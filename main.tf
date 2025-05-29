provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0953476d60561c955"
instance_type = "t2.medium"
key_name = "mkp"
vpc_security_group_ids = ["sg-01150710c0d4fc0d9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
