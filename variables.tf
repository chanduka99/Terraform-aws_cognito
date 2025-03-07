variable "access_key" {
  type        = string
  description = " aws access key"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = " aws secret key"
  sensitive   = true
}

variable "username" {
  type        = string
  description = "test username"
  sensitive   = true
}

variable "password" {
  type        = string
  description = "test password"
  sensitive   = true
}
