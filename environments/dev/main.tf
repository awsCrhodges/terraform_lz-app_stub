provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../../modules/network/"

  name_prefix = var.name_prefix
  vpc_cidr    = var.vpc_cidr
  aws_region  = var.aws_region

}

module "iam" {
  source      = "../../modules/iam"
  name_prefix = var.name_prefix

}

module "lambda" {
  source      = "../../modules/lambda"
  name_prefix = var.name_prefix

  lambda_role_arn = module.iam.lambda_role_arn

  log_retention_days = 7

}