resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.cidr_range_subnet}"

  tags = {
    Name = "${var.Name}"
  }
}