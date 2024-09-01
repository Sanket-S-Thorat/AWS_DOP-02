terraform {
   cloud { 
    
    organization = "laziii_mind116" 

    workspaces { 
      name = "PROD_ACC" 
    } 
  } 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}