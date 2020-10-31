resource aws_db_subnet_group default {
  name       = "${var.db_identifier}-subnet-group-${var.environment}"
  subnet_ids = var.private_subnet_ids

  tags = {
    name        = "${var.db_identifier}-subnet-group"
    environment = var.environment
  }
}

resource aws_db_instance default {
  identifier            = var.db_identifier
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  storage_type          = var.storage_type
  allocated_storage     = 20
  max_allocated_storage = 1000
  name                  = var.db_name
  username              = var.db_user
  password              = var.db_pass # TODO: use Amazon KMS or Hashicorp Vault.

  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [
    var.security_group.id,
  ]
  # tags
  tags = {
    name        = var.db_identifier
    environment = var.environment
  }
}
