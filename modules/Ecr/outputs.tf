output "ecr_repo_arn" {
  description = "The ARN of the ECR repository"
  value       = aws_ecr_repository.ecr_repo.arn
}

output "ecr_repo_url" {
  description = "The URL of the ECR repository"
  value       = aws_ecr_repository.ecr_repo.repository_url
}
