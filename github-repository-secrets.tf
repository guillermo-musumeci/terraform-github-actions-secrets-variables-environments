###########################################
## GitHub Repository Secrets - Resources ##
###########################################

# Generate a random password for SQL Server
resource "random_password" "sql_server_password" {
  length      = 24
  min_upper   = 3
  min_lower   = 3
  min_numeric = 3
  special     = false
}

# Create a GitHub Actions Secret with SQL Server Password
resource "github_actions_secret" "sql_server_password" {
  repository      = var.github_repository
  secret_name     = "SQL_ADMIN_PASSWORD"
  plaintext_value = random_password.sql_server_password.result
}