# resource "aws_s3_account_public_access_block" "block_public_access" {
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# resource "aws_iam_account_password_policy" "strict" {
#   minimum_password_length        = 12
#   require_lowercase_characters   = true
#   require_numbers                = true
#   require_uppercase_characters   = true
#   require_symbols                = true
#   allow_users_to_change_password = true
#   max_password_age               = 0
# }

# resource "aws_cloudwatch_log_metric_filter" "root_user_activity_filter" {
#   name           = "RootUserActivityFilter"
#   pattern        = "{$.userIdentity.type=\"Root\" && $.userIdentity.invokedBy NOT EXISTS && $.eventType !=\"AwsServiceEvent\"}"
#   log_group_name = aws_cloudwatch_log_group.cloudtrail_logs.name

#   metric_transformation {
#     name      = "RootUserActivity"
#     namespace = "LogMetrics"
#     value     = "1"
#   }

#   depends_on = [aws_cloudwatch_log_group.cloudtrail_logs]
# }

# resource "aws_cloudwatch_metric_alarm" "root_user_activity_alarm" {
#   alarm_name          = "RootUserActivityAlarm"
#   comparison_operator = "GreaterThanOrEqualToThreshold"
#   evaluation_periods  = 1
#   metric_name         = aws_cloudwatch_log_metric_filter.root_user_activity_filter.metric_transformation[0].name
#   namespace           = aws_cloudwatch_log_metric_filter.root_user_activity_filter.metric_transformation[0].namespace
#   period              = 300
#   statistic           = "Sum"
#   threshold           = 1

#   alarm_actions = [aws_sns_topic.management_account_cloudwatch_alarm.arn]

#   tags = {
#     Environment = "sandbox"
#     # Add other relevant tags from your tagging dictionary
#   }
# }

# resource "aws_sns_topic" "management_account_cloudwatch_alarm" {
#   name              = var.management_account_cloudwatch_alarm_name
#   kms_master_key_id = "alias/aws/sns" # Use the default AWS-managed KMS key for SNS
# }

# resource "aws_sns_topic_subscription" "email_subscription" {
#   topic_arn = aws_sns_topic.management_account_cloudwatch_alarm.arn
#   protocol  = "email"
#   endpoint  = var.notification_email
# }

# resource "aws_cloudwatch_log_group" "cloudtrail_logs" {
#   name              = var.cloudtrail_logs_group_name
#   retention_in_days = 14
# }
