variable "vpc_name" {
  default     = "Staging"
  description = "Name tag for the VPC to be created"
}

variable "vpc_cidr" {
  default     = "192.168.0.0/20"
  description = "Name tag for the VPC to be created"
}

variable "pub_sn_a_name" {
  default     = "PUB_SN_A"
  description = "Name tag for the Public Subnet in AZ A"
}

variable "pub_sn_a_cidr" {
  default     = "192.168.0.0/23"
  description = "CIDR for Public Subnet in AZ A"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"

  tags {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "pub_sn_a" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.pub_sn_a_cidr}"

  tags {
    Name = "${var.pub_sn_a_name}"
  }
}
