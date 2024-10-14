terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

backend "s3" {
    bucket = "crazymonk-remotestate"
    key    = "expense-app-alb-dev"
    region = "us-east-1"
    dynamodb_table = "crazymonk"

  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"

}