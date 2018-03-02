resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/20"

  tags {
    Name = "Staging"
  }
}
