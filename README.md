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