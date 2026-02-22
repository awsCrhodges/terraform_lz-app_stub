variable "name_prefix" {
  type = string

}

variable "vpc_cidr" {
  type = string

}

variable "aws_region" {
  type    = string
  default = "us-east-1"

}

variable "common_tags" {
  description = "Common tags applied to all resources."
  type = map(string)
  default = {}

}