resource "aws_route_table" "r" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = var.public_subnets[0]
  route_table_id = aws_route_table.r.id
}
#__________________________________________________________
#private
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat[0]
  }
}

resource "aws_route_table_association" "b" {
  subnet_id      = var.private_subnets[0]
  route_table_id = aws_route_table.private.id
}