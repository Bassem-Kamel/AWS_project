
resource "aws_instance" "bastion_ec2" {
  ami                         = var.ubuntu-ami
  instance_type               = var.ec2-type
  availability_zone           = var.sub1-zone
  subnet_id                   = module.network.public-sub1-id
  associate_public_ip_address = "true"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh_only.id}"]
  key_name                    = aws_key_pair.ec2key.key_name

  tags = {
    "Name" = "bastion_ec2"
  }
}


resource "aws_instance" "app_ec2" {
  ami                         = var.ubuntu-ami
  instance_type               = var.ec2-type
  availability_zone           = var.sub1-zone
  subnet_id                   = module.network.private-sub1-id
  associate_public_ip_address = "false"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh_vpc.id}"]
  key_name                    = aws_key_pair.ec2key.key_name

  tags = {
    "Name" = "app_ec2"
  }
}