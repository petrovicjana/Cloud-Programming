output "website_url" {
  value       = "https://${aws_amplify_branch.amplify_branch.branch_name}.${aws_amplify_app.amplify_app.default_domain}"
  description = "Amplify app URL"
  depends_on  = [aws_amplify_branch.amplify_branch]
}
