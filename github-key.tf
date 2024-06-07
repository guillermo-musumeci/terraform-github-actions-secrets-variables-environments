###########################################
## GitHub Actions Public Key - Resources ##
###########################################

# Retrieve information about a GitHub Actions public key
data "github_actions_public_key" "this" {
  repository = var.github_repository
}