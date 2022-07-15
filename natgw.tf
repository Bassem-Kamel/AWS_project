resource "aws_eip" "nat_ip" {

}


resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "mynat"
  }

}