module "amplify" {
  source = "./amplify"
  api_endpoint = module.apigateway.api_endpoint
  github_token = var.github_token
}

module "lambda" {
  source = "./lambda"
}

module "apigateway" {
  source = "./apigateway"
  lambda_invoke_arn = module.lambda.lambda_function_invoke_arn
  lambda_function_name = module.lambda.lambda_function_name
}

module "dynamodb" {
  source = "./dynamodb"
}

