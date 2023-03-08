locals {
  # Cloudwatch
  cloudwatch_group = format("/aws/ecs/%s", local.ecs_name)
  # ECS
  ecs_name  = format("%s-%s", var.project, var.environment)
  task_name = format("%s-task", local.ecs_name)
  # VPC
  sub_1 = "us-east-1a"
  sub_2 = "us-east-1b"
}