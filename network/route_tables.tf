resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    //associated subnet can reach everywhere
    cidr_block = "0.0.0.0/0" //CRT uses this IGW to reach internet
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table_association" "associate_public1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "associate_public2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

#--------------------------------------------------------------------

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.myvpc.id

  route {

    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.mynat.id
  }

  tags = {
    Name = "private_route_table"
  }
}

resource "aws_route_table_association" "associate_private1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "associate_private2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}
