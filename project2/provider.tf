
terraform {
       required_version = "~> 1.1.5"

  backend "s3" {
    bucket = "ismaila-demo-bucket"
    region = "us-east-1" 
    key = "ismailademo/terraform.tfstate"
    dynamodb_table = "ismaila-demo-dynamodb"
    encrypt = true
  }

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
  
