provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../../modules/network/"

  name_prefix = var.name_prefix
  vpc_cidr    = var.vpc_cidr
  aws_region  = var.aws_region

  common_tags = local.common_tags

}

module "iam" {
  source      = "../../modules/iam"
  name_prefix = var.name_prefix

  common_tags = local.common_tags

}

module "lambda" {
  source      = "../../modules/lambda"
  name_prefix = var.name_prefix

  lambda_role_arn = module.iam.lambda_role_arn

  log_retention_days = 7

  common_tags = local.common_tags

}

module "apigw" {
  source      = "../../modules/apigw"
  name_prefix = var.name_prefix

  lambda_invoke_arn    = module.lambda.invoke_arn
  lambda_function_name = module.lambda.function_name

  common_tags = local.common_tags

}

locals {
  common_tags = {
    Project     = "terraform-lz-app-stub"
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "AWSCrhodges"
  }

}