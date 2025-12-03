resource "aws_route_table" "test" {
  vpc_id = "${var.vpc_id}"


  route {
    cidr_block = "${var.cidr_range_route}"
    gateway_id = "${var.igw_id}"
  }

  tags = {
    Name = "${var.Name}"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = "${var.subnet_id}"
  route_table_id = aws_route_table.test.id
}