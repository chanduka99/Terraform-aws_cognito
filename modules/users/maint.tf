resource "aws_cognito_user" "admin_user" {
  user_pool_id   = var.user_pool_id
  username       = var.username
  password       = var.password
  message_action = "SUPPRESS"
  enabled        = true
  attributes = {
    email          = var.username
    email_verified = true
  }
}

# add user to user group Admins
resource "aws_cognito_user_in_group" "admin_user_in_group" {
  user_pool_id = var.user_pool_id
  group_name   = var.admin_group_name
  username     = var.username
  depends_on   = [aws_cognito_user.admin_user]
}

