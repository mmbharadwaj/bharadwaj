#public and private subnets in both availability zones

resource "aws_subnet" "ca-public-subnet-a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = "us-west-2a"

  tags = {
    "Name" = "ca-public-subnet-a"

  }
}

resource "aws_subnet" "ca-private-subnet-a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = "us-west-2a"

  tags = {
    "Name" = "ca-private-subnet-a"

  }
}



resource "aws_subnet" "ca-public-subnet-b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_3_cidr
  availability_zone = "us-west-2b"

  tags = {
    "Name" = "ca-public-subnet-b"

  }
}

resource "aws_subnet" "ca-private-subnet-b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_4_cidr
  availability_zone = "us-west-2b"

  tags = {
    "Name" = "ca-private-subnet-b"

  }
}






