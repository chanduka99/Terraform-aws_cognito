resource "aws_cognito_user" "admin_user" {
  user_pool_id       = var.user_pool_id
  username           = var.username
  temporary_password = var.password
  enabled            = true
  attributes = {
    email          = var.username
    email_verified = true
  }
}
