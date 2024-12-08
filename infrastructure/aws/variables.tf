variable "region" {
  description = "AWSregion"
  type        = string
  default     = "eu-west-2"
}

# variable "remote_state_bucket_name" {
#   description = "S3 bucket name for Terraform shared state on sandbox for testing"
#   type        = string
#   default     = "sandbox-terraform-shared-state-testing"
# }

# variable "remote_state_locking" {
#   description = "DynanoDB table for Terraform shared state locking on sandbox for testing"
#   type        = string
#   default     = "sandbox-terraform-shared-state-locking"
# }

# # Define the variable
# variable "notification_email" {
#   type        = string
#   description = "Email address to receive notifications"
#   default     = "feng.zhu@stepchange.org"
#   sensitive   = true # Mark it as sensitive
# }

# variable "cloudtrail_logs_group_name" {
#   type        = string
#   default     = "sandbox/testing-cloudtrail-logs"
#   description = "The name of the CloudTrail logs group"
# }

# variable "tags" {
#   description = "A map of tags to add to the resources created"
#   type        = map(any)
#   default = {
#     "Terraform"   = "true"
#     "Environment" = "sandbox"
#     "Project"     = "sc-security"
#     "Role"        = "GithubOidc"
#   }
# }

# variable "management_account_cloudwatch_alarm_name" {
#   type        = string
#   default     = "ManagementAccountCloudWatchAlarm"
#   description = "The name of management accout cloud watch alarm"
# }

# variable "name" {
#   description = "Name of IAM role"
#   type        = string
#   default     = "GithubOidcSandboxTesting"
# }

# variable "description" {
#   description = "IAM Role description"
#   type        = string
#   default     = "Github OIDC role for sandbox testing"
# }

# variable "force_detach_policies" {
#   description = "Whether policies should be detached from this role when destroying"
#   type        = bool
#   default     = true
# }

# variable "max_session_duration" {
#   description = "Maximum CLI/API session duration in seconds between 3600 and 43200"
#   type        = number
#   default     = 7200
# }

# variable "audience" {
#   description = "Audience to use for OIDC role. Defaults to `sts.amazonaws.com` for use with the [official AWS GitHub action](https://github.com/aws-actions/configure-aws-credentials)"
#   type        = string
#   default     = "sts.amazonaws.com"
# }

# variable "provider_url" {
#   description = "The URL of the identity provider. Corresponds to the iss claim"
#   type        = string
#   default     = "token.actions.githubusercontent.com"
# }

# variable "github_thumbprint_list" {
#   description = "Github URL thumbprint list"
#   type        = list(string)
#   default     = ["d89e3bd43d5d909b47a18977aa9d5ce36cee184c"]
# }
