
resource "tls_private_key" "instance_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec2key" {
  key_name   = "ec2key"
  public_key = tls_private_key.instance_key.public_key_openssh

  tags = {
    "Name" = "ec2key"
  }
}



resource "aws_secretsmanager_secret" "mysecrets" {
  name = "mysecrets"
}

resource "aws_secretsmanager_secret_version" "secretkey" {
  secret_id     = aws_secretsmanager_secret.mysecrets.id
  secret_string = tls_private_key.instance_key.private_key_openssh
}