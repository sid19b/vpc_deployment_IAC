resource "aws_vpc" "test_name" {
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "${var.Name}"
  }
}