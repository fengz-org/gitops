#data source to read the IAM github providers that has been provisioned by aft global customizations
# resource of a IAM role
# trust policy - copy from mamangent repo - check the sub and aud must be on repo level, no need for branch
# add permission policy basic = cloudwatch loggroups
# create a basic github actions with terraform plan to test it out
# The role has limitation to a repo, to run it in a pipe, we need another role.
# So the best way is to run it locally with admin to setup the role first

# resource "aws_iam_role" "this" {
#   name                  = var.name
#   path                  = "/"
#   description           = var.description
#   assume_role_policy    = data.aws_iam_policy_document.trust.json
#   max_session_duration  = var.max_session_duration
#   force_detach_policies = var.force_detach_policies
#   tags                  = var.tags
# }

# resource "aws_iam_role_policy_attachment" "managed" {
#   for_each = toset([
#     "AmazonDynamoDBFullAccess",
#     "AmazonEC2ContainerRegistryFullAccess",
#     "AmazonECS_FullAccess",
#     "AmazonEventBridgeSchedulerFullAccess",
#     "AmazonVPCFullAccess",
#     "AWSLambda_FullAccess",
#     "CloudWatchLogsFullAccess",
#   ])
#   role       = aws_iam_role.this.id
#   policy_arn = "arn:aws:iam::aws:policy/${each.value}"
# }
