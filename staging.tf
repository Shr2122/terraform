variable "vpc_name" {
  default     = "Staging"
  description = "Name tag for the VPC to be created"
}

variable "vpc_cidr" {
  default     = "192.168.0.0/20"
  description = "Name tag for the VPC to be created"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"

  tags {
    Name = "${var.vpc_name}"
  }
}

module "pub_sn_a" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.0.0/23"
  sn_name = "PUB_SN_A"
}
