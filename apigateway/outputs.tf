output "api_endpoint" {
  value = "${aws_api_gateway_stage.api_stage.invoke_url}${aws_api_gateway_resource.lambda_resource.path}"
  description = "API Gateway endpoint URL for current stage"
}