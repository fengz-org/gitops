data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# # Retrieve subnet information
# data "aws_subnet" "sanbox_private_subnet_1a" {
#   # Filter by subnet ID if you know it
#   #   id = "subnet-12345678"

#   # Alternatively, filter by tags if applicable
#   tags = {
#     Name = "sandbox-vpc-private-eu-west-2a"
#   }
# }

# # Retrieve security group information
# data "aws_security_group" "default_security_group" {
#   # Filter by security group ID if you know it
#   # id = "sg-12345678"

#   # Alternatively, filter by tags or name if applicable
#   tags = {
#     Name = "sandbox-vpc-default"
#   }
# }

# data "aws_iam_policy_document" "trust" {
#   statement {
#     sid    = "GithubOidcAuth"
#     effect = "Allow"
#     actions = [
#       "sts:TagSession",
#       "sts:AssumeRoleWithWebIdentity"
#     ]

#     principals {
#       type        = "Federated"
#       identifiers = ["arn:${local.partition}:iam::${local.account_id}:oidc-provider/${local.provider_url}"]
#     }

#     condition {
#       test     = "StringEquals"
#       variable = "token.actions.githubusercontent.com:aud"
#       values   = ["sts.amazonaws.com"]
#     }

#     condition {
#       test     = "StringLike"
#       variable = "token.actions.githubusercontent.com:sub"
#       values   = ["repo:stepchange-org/sc-security:*"]
#     }
#   }
# }

# data "aws_iam_openid_connect_provider" "github_actions" {
#   url = "https://${var.provider_url}"
# }
