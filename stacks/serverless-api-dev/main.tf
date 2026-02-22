provider "aws" {
    region = var.aws_region
}

module "iam" {
    source      = "../../modules/iam"
    name_prefix = var.name_prefix

    common_tags = local.common_tags
}

module "lambda" {
    source = "../../modules/lambda"
    name_prefix = var.name_prefix

    lambda_role_arn = module.iam.lambda_role_arn

    lambda_timeout = 120

    common_tags = local.common_tags
}

module "apigw" {
    source = "../../modules/apigw"

    name_prefix = var.name_prefix
    lambda_invoke_arn   = module.lambda.invoke_arn
    lambda_function_name = module.lambda.function_name

    common_tags = local.common_tags
}