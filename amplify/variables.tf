variable "amplify_app_name" {
  description = "The name of the Amplify application for the Exponentiation Calculator"
  type = string
  default = "exponentiation-calculator"
}

variable "api_endpoint" {}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}




