terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region                   = "us-east-2"
  shared_credentials_files = ["C:/Users/XXXXXXXXXXXX/.aws/credentials"]
  profile                  = "default"

  default_tags {
    tags = {
      Environment = "test"
      Owner       = "Ecole Cap"
      Builder     = "TF"
    }
  }

}
