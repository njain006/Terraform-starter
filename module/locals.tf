locals {
  tags = {
    name        = "test"
    service     = "test"
    environment = var.env
    terraform   = "true"
  }
}
