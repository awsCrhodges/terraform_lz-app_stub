provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../../modules/network/"

  name_prefix = var.name_prefix
  vpc_cidr    = var.vpc_cidr
  aws_region  = var.aws_region

}
