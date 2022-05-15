provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}

//EC2
resource "aws_instance" "ec2-example" {
  ami = "ami-005de95e8ff495156"
  instance_type = "t2.micro"    
  tags = {
    "Name" = "Ec2 Instance with remote state - Developer2 "
  }
}

 
 