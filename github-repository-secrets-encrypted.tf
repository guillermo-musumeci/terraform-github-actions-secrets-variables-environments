###########################################
## GitHub Repository Secrets - Resources ##
###########################################

# Variable for SQL Server password
variable "encrypted_ms_sql_server_password" {
  type        = string
  description = "Encrypted MS SQL Server password"
  default     = ""
}

# Create a GitHub Actions Secret using encrypted variable
resource "github_actions_secret" "ms_sql_server_password" {
  repository       = var.github_repository
  secret_name      = "MS_SQL_PASSWORD"
  encrypted_value  = var.encrypted_ms_sql_server_password

  depends_on = [ data.github_actions_public_key.this ]
}
