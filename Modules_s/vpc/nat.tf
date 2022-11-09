resource "aws_eip" "ngw" {
  vpc = true

  tags = {
    Name = "eip"
  }
}

resource "aws_nat_gateway" "NAT-gw" {
  allocation_id = aws_eip.ngw.id
  subnet_id     = aws_subnet.ca-public-subnet-b.id

  tags = {
    Name = "ngw"
  }

  depends_on = [aws_internet_gateway.igw]
}
