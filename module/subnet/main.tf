resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet)
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "Public-Subnet ${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet)
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    "Name" = "Private-Subnet ${count.index + 1}"
  }
}