# locals {
#   provider_url = replace(var.provider_url, "https://", "")
#   account_id   = data.aws_caller_identity.current.account_id
#   partition    = data.aws_partition.current.partition
#   policies = [
#     "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
#     "arn:aws:iam::aws:policy/AmazonS3FullAccess",
#     "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess",
#     "arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess",
#     "arn:aws:iam::aws:policy/AWSOrganizationsReadOnlyAccess",

#   ]
#}

# resource to use with the locals
# resource "aws_iam_role_policy_attachment" "this" {
#   for_each = { for k, v in local.policies : k => v }

#   role       = aws_iam_role.this.name
#   policy_arn = each.value
# }
