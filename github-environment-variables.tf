###############################################
## GitHub Environments Variables - Resources ##
###############################################

# Create a GitHub Actions Variable for VM Admin User
resource "github_actions_environment_variable" "vm_user" {
  repository    = var.github_repository
  environment   = github_repository_environment.prod.environment
  variable_name = "VM_ADMIN_USER"
  value         = "vmadmin"
}
