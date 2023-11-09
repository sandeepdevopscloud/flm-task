provider "aws" {
region = "us-east-1"
access_key = ""
secret_key = ""
}

provider "aws" {
region = "ap-south-1"
access_key = ""
secret_key = ""
}

resource = "aws_instance" "key" {
ami = ""
instance_type = "t2.micro"
tags = {
Name = "instance1"
}
}
resource "aws_security_group" "ec2-security_group" {
name = "ec2 security group"
description = "giving permissions to ssh and hhtp ports 22 80"
vpc_id = ""
ingress {
description = "ssh 22"
from_port = 22
to_port = 22
protocol = tcp
cidr_blocks = "[0.0.0.0/0]"
}
ingress {
description = "http 80"
from_port = 80
to_port = 80
protocol = tcp
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 0
to_port = 0
protocol = -1
cidr_blocks = ["0.0.0.0/0"]
}
}

