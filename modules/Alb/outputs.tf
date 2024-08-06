output "load_balancer_arn" {
  description = "The ARN of the load balancer"
  value       = aws_lb.main.arn
}

output "target_group_arn" {
  description = "The ARN of the load balancer target group"
  value       = aws_lb_target_group.ecs.arn
}
