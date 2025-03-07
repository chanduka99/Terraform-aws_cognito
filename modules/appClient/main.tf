resource "aws_cognito_user_pool_client" "client" {
  name                   = var.app_client_name
  user_pool_id           = var.user_pool_id
  auth_session_validity  = 3
  refresh_token_validity = 5
  access_token_validity  = 1
  id_token_validity      = 1
  generate_secret        = false
  explicit_auth_flows = [
    "ALLOW_USER_AUTH",
    "ALLOW_USER_PASSWORD_AUTH",
    "ADMIN_NO_SRP_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH",
  ]
  prevent_user_existence_errors = "ENABLED"
}
