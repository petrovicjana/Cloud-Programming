# Defining Amplify app resource
resource "aws_amplify_app" "amplify_app" {
  name = var.amplify_app_name
  repository = "https://github.com/petrovicjana/Cloud-Programming.git"
  platform = "WEB"
  access_token = var.github_token

  # Enable automatic deployment
  enable_auto_branch_creation = true
  enable_branch_auto_build = true

  # Build specification
  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        build:
          commands:
            - echo "Build starting"
      artifacts:
        baseDirectory: .
        files:
          - '**/*'
    EOT

  # Auto branch creation config
  auto_branch_creation_config {
    enable_auto_build = true
  }
}

# Defining Amplify branch resource
resource "aws_amplify_branch" "amplify_branch" {
  app_id = aws_amplify_app.amplify_app.id
  branch_name = "main"
  stage = "DEVELOPMENT"
  enable_auto_build = true

  environment_variables = {
    "API_GATEWAY_URL" = var.api_endpoint
  }
}

# Add webhook for automatic deployments
resource "aws_amplify_webhook" "webhook" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = aws_amplify_branch.amplify_branch.branch_name
  description = "trigger-build"
}

