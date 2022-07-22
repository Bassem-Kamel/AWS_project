resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.net_pubsub1-cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.net_sub1-zone

  tags = {
    Name = "public_subnet1"
  }

}


resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.net_pubsub2-cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.net_sub2-zone

  tags = {
    Name = "public_subnet2"
  }
}


resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.net_prvsub1-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.net_sub1-zone

  tags = {
    Name = "private_subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.prvsub2-cidr
  map_public_ip_on_launch = "false"
  availability_zone       = var.sub2-zone

  tags = {
    Name = "private_subnet2"
  }
}