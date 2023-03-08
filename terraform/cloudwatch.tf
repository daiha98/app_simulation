resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = local.cloudwatch_group
  retention_in_days = 7
}