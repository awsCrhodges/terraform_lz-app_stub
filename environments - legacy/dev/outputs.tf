output "vpc_id" {
  value = module.network.vpc_id

}

output "lambda_function_name" {
  value = module.lambda.function_name
}

output "api_endpoint" {
  value = module.apigw.api_endpoint

}