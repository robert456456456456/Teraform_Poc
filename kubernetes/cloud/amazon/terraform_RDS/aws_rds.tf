provider "aws" {
  region = "eu-central-1"
  profile = "default"
}


resource "aws_db_instance" "WordPress-RDS" {
  allocated_storage    = 5
  max_allocated_storage = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  identifier           = "wordpressdb"
  name                 = "wpdbtest"
  username             = "task6db"
  password             = "mydbpass"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
  port = 3306
  publicly_accessible = true

  auto_minor_version_upgrade = true

  delete_automated_backups = true
}

output "RDS-Instance" {
  value = aws_db_instance.WordPress-RDS.address
}