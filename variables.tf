variable "region" {
  description = "AWS region for resources"
  default = "eu-central-1"
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}