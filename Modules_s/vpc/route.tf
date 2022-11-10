resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.NAT-gw.id
  }

  tags = {
    Name = "private-rt"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table_association" "public-rt-a" {
  subnet_id      = aws_subnet.ca-public-subnet-a.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-rt-b" {
  subnet_id      = aws_subnet.ca-public-subnet-b.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private-rt-a" {
  subnet_id      = aws_subnet.ca-private-subnet-a.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private-rt-b" {
  subnet_id      = aws_subnet.ca-private-subnet-b.id
  route_table_id = aws_route_table.private-rt.id
}
