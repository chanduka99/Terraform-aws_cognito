terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region     = "ap-southeast-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "userPool" {
  source = "./modules/userPool"
  # variables
  user_pool_name = "testUserPool"
  # stage_name = "dev"

}

module "appClient" {
  source     = "./modules/appClient"
  depends_on = [module.userPool]
  # variables
  user_pool_id    = module.userPool.user_pool_id
  app_client_name = "testAppClient"
  # stage_name = "dev"

}
