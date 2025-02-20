variable "region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "myslackbotrepo15"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  default     = "ecs-Slackbot-cluster"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "The CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "container_name" {
  type        = string
  default     = "SlackBot"
}

variable "image" {
  description = "The image to use for the container"
  type        = string
  default     = "nginx:latest"
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  default     = "/ecs/my-app"
}

variable "retention_in_days" {
  description = "The retention in days for CloudWatch logs"
  default     = 7
}

variable "lb_name" {
  description = "The name of the load balancer"
  default     = "Slackbot-ecs-lb"
}

variable "target_group_name" {
  description = "The name of the load balancer target group"
  default     = "Slackbot-ecs-targetgroup"
}
