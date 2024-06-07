# Define the Terraform provider
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub provider
provider "github" {
  token = var.github_token
  owner = var.github_owner
}