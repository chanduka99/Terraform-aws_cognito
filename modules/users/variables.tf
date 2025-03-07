variable "user_pool_id" {
  type = string
}

variable "username" {
  type      = string
  sensitive = true
}

variable "password" {
  type      = string
  sensitive = true
}

variable "admin_group_name" {
  type = string
}