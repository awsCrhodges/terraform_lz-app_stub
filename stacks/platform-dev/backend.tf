terraform {
    backend "s3" {
        bucket      = "tfstate-chodges-9f3a1c-use1"
        key         = "stacks/platform-dev/terraform.tfstate"
        region      = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt     = true

    }

}