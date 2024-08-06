variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  type        = string
}

variable "retention_in_days" {
  description = "The retention in days for CloudWatch logs"
  type        = number
}
