#############################################
## GitHub Repository Variables - Resources ##
#############################################

# Create a GitHub Actions Variable for SQL Server Admin User
resource "github_actions_variable" "sql_server_user" {
  repository    = var.github_repository
  variable_name = "SQL_ADMIN_USER"
  value         = "sqladmin"
}