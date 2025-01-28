# Defining Amplify app resource
resource "aws_amplify_app" "amplify_app" {
  name       = var.amplify_app_name
  repository = "https://github.com/petrovicjana/Cloud-Programming.git"
  platform   = "WEB"

  # Enable automatic branch creation and builds
  enable_auto_branch_creation = true
  enable_branch_auto_build    = true

  # Build specification
  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        build:
          commands:
            - echo "window.API_GATEWAY_URL = '$API_GATEWAY_URL'" > config.js
      artifacts:
        baseDirectory: /
        files:
          - index.html
          - config.js
          - '**/*'
    EOT
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

