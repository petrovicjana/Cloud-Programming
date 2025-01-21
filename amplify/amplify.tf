resource "aws_amplify_app" "amplify_app" {
  name = var.amplify_app_name
  repository = "https://github.com/petrovicjana/Cloud-Programming.git"
  platform = "WEB"
  access_token = var.github_token

  auto_branch_creation_config {
    enable_auto_build = true
  }
}

resource "aws_amplify_branch" "amplify_branch" {
  app_id = aws_amplify_app.amplify_app.id
  branch_name = "main"
  environment_variables = {
    "API_GATEWAY_URL" = var.api_endpoint
  }
}
