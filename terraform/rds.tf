resource "aws_db_instance" "main" {
  allocated_storage = 20
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  username          = var.db_username
  password          = var.db_password
  multi_az          = true
  storage_encrypted = true

  skip_final_snapshot = true
}
