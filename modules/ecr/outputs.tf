output "ecr_repo_urls" {
  value = { for r in aws_ecr_repository.repos : r.name => r.repository_url }
}