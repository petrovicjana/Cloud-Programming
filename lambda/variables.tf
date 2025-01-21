variable "lambda_function_name" {
  description = "Function that handles the calculation in the app"
  default     = "exponentiation-function"
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  default     = "ExponentiationResults"
}

variable "region" {
  description = "AWS region for resources"
  default     = "eu-central-1"
}
