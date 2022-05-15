//  Added provider file. It's recommended to identify the version of the providers
//  It's also recommended to have the terraform version defined.
terraform {
       required_version = "~> 1.1.5"

        
  backend "s3" {
    bucket = "ismaila-demo-bucket"
    region = "us-east-1"
    # Store state about managed infrastructure and configuration 
    # the state is store by default in a local file name terraform.tfstate but it can be stores remotely which works better in a team environment. 
    # format in JSON.  #key can any part for tfstate
     #key. referencing to the same terrraform state file in the project.
   key = "terraform.tfstate"
   dynamodb_table = "ismaila-demo-dynamodb"
    encrypt = true
  }

#prevents other from acquiring the lock and corrupting your state.
#dynamodb table will hold the information of the log and prevent others to make changes while you are working.

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
  }
  }
  
