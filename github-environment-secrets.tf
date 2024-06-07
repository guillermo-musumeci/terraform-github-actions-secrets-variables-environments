#############################################
## GitHub Environments Secrets - Resources ##
#############################################

# Generate a random password for the VM Admin
resource "random_password" "vm_password" {
  length      = 24
  min_upper   = 3
  min_lower   = 3
  min_numeric = 3
  special     = false
}

# Create a GitHub Actions Secret with VM Admin Password in PROD Environment
resource "github_actions_environment_secret" "vm_password" {
  repository      = var.github_repository
  environment     = github_repository_environment.prod.environment
  secret_name     = "VM_ADMIN_PASSWORD"
  plaintext_value = random_password.vm_password.result

  depends_on = [ 
    github_repository_environment.dev, 
    github_repository_environment.test, 
    github_repository_environment.prod 
  ]    
}

