resource "aws_db_instance" "main" {
  allocated_storage = 20
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  username          = "admin"
  password          = "ChangeMe123!"
  multi_az          = true
  storage_encrypted = true
}
