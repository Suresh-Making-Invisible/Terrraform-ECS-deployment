output "ecs_task_execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  value       = aws_iam_role.ecs_task_execution.arn
}

output "ecr_access_policy_arn" {
  description = "The ARN of the ECR access policy"
  value       = aws_iam_policy.ecr_access_policy.arn
}

output "ecs_task_execution_policy_attachment_id" {
  description = "The ID of the ECS task execution policy attachment"
  value       = aws_iam_role_policy_attachment.ecs_task_execution_policy.id
}

output "ecs_task_execution_role_policy_attachment_id" {
  description = "The ID of the ECS task execution role policy attachment"
  value       = aws_iam_role_policy_attachment.ecs_task_execution_role_ecr_policy.id
}
