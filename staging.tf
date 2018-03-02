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

module "pub_sn_b" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.2.0/23 "
  sn_name = "PUB_SN_B"
}

module "pvt_sn_app_a" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.4.0/23"
  sn_name = "PVT_SN_APP_A"
}

module "pvt_sn_app_b" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.6.0/23"
  sn_name = "PVT_SN_APP_B"
}

module "pvt_sn_db_a" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.8.0/23"
  sn_name = "PVT_SN_DB_A"
}

module "pvt_sn_db_b" {
  source  = "./subnet"
  vpc_id  = "${aws_vpc.main.id}"
  sn_cidr = "192.168.10.0/23"
  sn_name = "PVT_SN_DB_B"
}
