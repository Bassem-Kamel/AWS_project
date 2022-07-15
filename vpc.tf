resource "aws_vpc" "myvpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    "Name" = "myvpc"
  }

  provisioner "local-exec" {

    command = "echo vpc owner id = ${self.owner_id}"

  }
}