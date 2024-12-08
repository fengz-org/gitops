provider "aws" {
  region = var.region
  #allowed_account_ids = ["account-id"]
  default_tags {
    tags = {
      "Terraform"   = "true"
      "Environment" = "sandbox"
      "Project"     = "security"
    }
  }
}
