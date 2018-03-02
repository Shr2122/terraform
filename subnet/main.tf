variable "vpc_id" {
  description = "VPC in which subnet to be created"
}

variable "sn_name" {
  default     = "DEFAULT_SN_NAME"
  description = "Name tag for the Public Subnet in AZ A"
}

variable "sn_cidr" {
  description = "CIDR for Subnet"
}

resource "aws_subnet" "pub_sn_a" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.sn_cidr}"

  tags {
    Name = "${var.sn_name}"
  }
}
