variable "domain_name" {
  description = "Apex domain of the site (must already have a Route 53 hosted zone)."
  type        = string
  default     = "aiancooldevops.com"
}

variable "github_repo" {
  description = "GitHub repository allowed to deploy the site, in the form owner/repo."
  type        = string
}

variable "create_github_oidc_provider" {
  description = "Set to false if this AWS account already has the GitHub OIDC provider."
  type        = bool
  default     = true
}
