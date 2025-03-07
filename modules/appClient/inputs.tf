variable "user_pool_id" {
  type = string
  description = "The ID of the user pool"
}

variable "app_client_name" {
  type = string
  description = "The name of the app client"
  default = "myappclient"
}