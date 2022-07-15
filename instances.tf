
resource "aws_instance" "bastion_ec2" {
  ami                         = "ami-085284d24fe829cd0"
  instance_type               = "t2.micro"
  availability_zone           = "us-west-1a"
  subnet_id                   = aws_subnet.public_subnet1.id
  associate_public_ip_address = "true"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh_only.id}"]
  key_name                    = aws_key_pair.ec2key.key_name

  tags = {
    "Name" = "bastion_ec2"
  }
}


resource "aws_instance" "app_ec2" {
  ami                         = "ami-085284d24fe829cd0"
  instance_type               = "t2.micro"
  availability_zone           = "us-west-1a"
  subnet_id                   = aws_subnet.private_subnet1.id
  associate_public_ip_address = "false"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh_vpc.id}"]
  key_name                    = aws_key_pair.ec2key.key_name

  tags = {
    "Name" = "app_ec2"
  }
}