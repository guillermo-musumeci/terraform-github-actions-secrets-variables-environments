################################
## GitHub Secrets - Variables ##
################################

variable "github_token" {
  type        = string
  description = "GitHub personal access token"
}

variable "github_owner" {
  type        = string
  description = "GitHub organization or individual user account to manage"
}

variable "github_repository" {
  type        = string
  description = "GitHub repository name"
}