output "site_url" {
  value = "https://${var.domain_name}"
}

output "site_bucket" {
  description = "GitHub variable SITE_BUCKET"
  value       = aws_s3_bucket.site.id
}

output "cloudfront_distribution_id" {
  description = "GitHub variable CLOUDFRONT_DISTRIBUTION_ID"
  value       = aws_cloudfront_distribution.site.id
}

output "github_actions_role_arn" {
  description = "GitHub variable AWS_ROLE_ARN"
  value       = aws_iam_role.github_deploy.arn
}

output "github_plan_role_arn" {
  description = "GitHub variable AWS_PLAN_ROLE_ARN"
  value       = aws_iam_role.github_plan.arn
}
