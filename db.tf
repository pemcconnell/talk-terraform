resource "aws_db_instance" "db" {
  allocated_storage = 20
  engine = "MySQL"
  instance_class = "db.t3.micro"
  username = "hellonidc2019"
  password = "plsdontlogintothis99"
  skip_final_snapshot = "true"
}
