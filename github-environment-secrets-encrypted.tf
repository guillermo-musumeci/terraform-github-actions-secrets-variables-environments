#############################################
## GitHub Environments Secrets - Resources ##
#############################################

# Encrypted VM Admin password variable
variable "encrypted_vm_admin_password" {
  type        = string
  description = "Encrypted VM Admin password"
  default     = ""
}

/* Getting Error 422

# Create a GitHub Actions Secret with encrypted VM Admin Password in DEV Environment
resource "github_actions_environment_secret" "vm_password_encrypted" {
  repository      = var.github_repository
  environment     = github_repository_environment.prod.environment
  secret_name     = "VM_ADMIN_PASSWORD_DEV"
  encrypted_value = var.encrypted_vm_admin_password

  depends_on = [ 
    github_repository_environment.dev, 
    github_repository_environment.test, 
    github_repository_environment.prod,
    data.github_actions_public_key.this
  ]    
}
*/

