resource "aws_cognito_user_group" "admins" {
  name         = "Admins"
  user_pool_id = var.user_pool_id
  description  = "Admins of the app"
  precedence   = 1
}

resource "aws_cognito_user_group" "standardUsers" {
  name         = "StandardUsers"
  user_pool_id = var.user_pool_id
  description  = "Standard users of the app"
  precedence   = 2
}
