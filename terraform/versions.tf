terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.81, < 7.0"
    }
  }

  # The state bucket name is passed at init time:
  #   terraform init -backend-config="bucket=tfstate-<ACCOUNT_ID>"
  backend "s3" {
    key          = "portfolio-site/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

# CloudFront requires its ACM certificate in us-east-1, so everything lives there.
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "devops-portfolio"
      ManagedBy = "terraform"
    }
  }
}
