variable "name_prefix" {
  type = string

}

variable "lambda_invoke_arn" {
  type = string

}

variable "lambda_function_name" {
  type = string

}

variable "common_tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}

}