#####################################
## GitHub Environments - Resources ##
#####################################

# Create the Developement Environment
resource "github_repository_environment" "dev" {
  repository  = var.github_repository
  environment = "DEVELOPMENT"
}

# Create the Test Environment
resource "github_repository_environment" "test" {
  repository  = var.github_repository
  environment = "TEST"
}

# Create the Production Environment
resource "github_repository_environment" "prod" {
  repository  = var.github_repository
  environment = "PRODUCTION"
}