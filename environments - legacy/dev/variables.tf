variable "aws_region" {
  type    = string
  default = "us-east-1"

}

variable "name_prefix" {
  type    = string
  default = "platform-slice-dev"

}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"

}