resource "aws_db_instance" "db" {
  allocated_storage = 10
  engine = var.engine_type
  engine_version = var.engine_version
  instance_class = var.instance_class
  name = "mydb" 
  username = var.username
  password = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot = true
}



