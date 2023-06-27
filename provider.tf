terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Project          = var.project_name
      EnvironmentStage = var.environment_stage
    }
  }
}
