output "current_aws_account" {
  value = data.aws_caller_identity.current.account_id
}

output "iam_oidc_provider" {
  value = data.aws_iam_openid_connect_provider.github_actions.url
}
