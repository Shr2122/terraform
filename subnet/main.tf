resource "aws_subnet" "subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.sn_cidr}"

  tags {
    Name = "${var.sn_name}"
  }
}
