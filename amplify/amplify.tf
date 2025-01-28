# Defining Amplify app resource
resource "aws_amplify_app" "amplify_app" {
  name       = var.amplify_app_name
  repository = "https://github.com/petrovicjana/Cloud-Programming.git"
  platform   = "WEB"
  access_token = var.github_token

}

# Defining Amplify branch resource
resource "aws_amplify_branch" "amplify_branch" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = "main"
  stage       = "DEVELOPMENT"
  enable_auto_build = true

  environment_variables = {
    "API_GATEWAY_URL" = var.api_endpoint
  }
}

