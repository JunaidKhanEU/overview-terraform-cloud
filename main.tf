terraform {
  backend "remote" {
    organization = "junaidkhandev"

    workspaces {
      name = "overview-terraform-cloud"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "example" {
  ami           = "ami-0d71ea30463e0ff8d"
  instance_type = "t2.micro"
}
