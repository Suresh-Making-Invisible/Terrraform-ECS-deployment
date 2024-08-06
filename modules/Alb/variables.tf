variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "target_group_name" {
  description = "The name of the load balancer target group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "security_group_id" {
  description = "The IDs of the security groups"
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets"
  type        = list(string)
}
