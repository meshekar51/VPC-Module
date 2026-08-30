resource "aws_eip" "lb" {
  domain   = "vpc"
}



resource  "aws_nat_gateway" "example" {
  count = length(var.public_subnets)

   allocation_id = aws_eip.lb.id
  subnet_id     = var.public_subnets[count.index]

  tags = {
    Name = "nat-${count.index}"
  }
  depends_on = [var.igw]
}