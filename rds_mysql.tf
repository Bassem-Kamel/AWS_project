resource "aws_db_instance" "rds_mysql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "db_mydb"
  username             = "bassem"
  password             = "123456789"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name = "rds_mysql"
  }
}


resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [module.network.private-sub1-id, module.network.private-sub2-id]
}