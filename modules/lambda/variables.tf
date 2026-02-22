variable "name_prefix" {
  type = string
}
variable "lambda_runtime" {
  type    = string
  default = "python3.14"
}
variable "lambda_timeout" {
  type    = number
  default = 120
}
variable "lambda_memory_size" {
  type    = number
  default = 128
}

variable "lambda_role_arn" {
  type = string
}

variable "log_retention_days" {
  type    = number
  default = 7
}

variable "common_tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}

}