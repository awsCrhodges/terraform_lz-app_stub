# terraform_lz-app_stub

This project provisions a minimal AWS environment using Terraform, including: 

- Remote state backend (S3 + DynamoDB locking)
- VPC with public subnets
- IAM roles
- Lambda function
- HTTP API Gateway

  ## Goals

  - Demonstrate infrastructure-as-code funcamentals
  - Use modular Terraform structure
  - Implement remote state and locking
  - Apply cost-conscious design

## Screenshots
- VPC
  ![VPC](docs/screenshots/vpc.png)

- Public Route Table
  ![Route Table](docs/screenshots/route_table.png)

- Subnets
  ![Subnets](docs/screenshots/subnets_created.png)

- DynamoDB
  ![DynamoDB Table](docs/screenshots/document_table.png)

- Internet Gateway
  ![IGW](docs/screenshots/igw.png)

- API Endpoint Created
  ![APIGW](docs/screenshots/api_endpoint_created.png)

- API Creation Bash Output
  ![APIGW Creation](docs/screenshots/terraform_plan_output.png)

- Terraform Missing Module Fix
  ![Missing Module](docs/screenshots/intalling_modules.png)

- Successful Lambda Execution Curl
  ![CURL](docs/screenshots/terraform_apply_successful_200_output.png)

