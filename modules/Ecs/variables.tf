variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  type        = string
}

variable "container_name" {
  description = "The name of the container"
  type        = string
}

variable "image" {
  description = "The image to use for the container"
  type        = string
}

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets"
  type        = list(string)
}

variable "security_group_id" {
  description = "The IDs of the security groups"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the load balancer target group"
  type        = string
}
