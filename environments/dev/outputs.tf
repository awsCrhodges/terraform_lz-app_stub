output "vpc_id" {
  value = module.network.vpc_id

}

output "lambda_function_name" {
  value = module.lambda.function_name
}