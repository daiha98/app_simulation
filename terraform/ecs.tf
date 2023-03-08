data "aws_ecr_repository" "ecr" {
  name = var.ecr_name
}
resource "aws_ecs_cluster" "cluster" {
  name = format("%s-cluster", local.ecs_name)
}
resource "aws_ecs_task_definition" "app_task" {
  family                   = local.task_name
  container_definitions    = <<DEFINITION
  [
    {
      "name": "${local.task_name}",
      "image": "${data.aws_ecr_repository.ecr.repository_url}",
      "essential": true,
      "portMappings": [
        {
          "containerPort": ${var.ecs_port},
          "hostPort": ${var.ecs_port}
        }
      ],
      "memory": ${var.memory},
      "cpu": ${var.cpu}
    }
  ]
  DEFINITION
  requires_compatibilities = [var.type_launch]
  network_mode             = "awsvpc"
  memory                   = var.memory
  cpu                      = var.cpu
  execution_role_arn       = aws_iam_role.ecsTaskExecutionRole.arn
}
resource "aws_ecs_service" "app_service" {
  name            = format("%s-service", var.project)
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.app_task.arn
  launch_type     = var.type_launch
  desired_count   = 3
  load_balancer {
    target_group_arn = aws_lb_target_group.target_group.arn
    container_name   = aws_ecs_task_definition.app_task.family
    container_port   = var.ecs_port
  }

  network_configuration {
    subnets = [
      aws_default_subnet.default_subnet_a.id,
      aws_default_subnet.default_subnet_b.id
    ]
    assign_public_ip = true
    security_groups  = [aws_security_group.service_security_group.id]
  }
}

resource "aws_security_group" "service_security_group" {
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.load_balancer_security_group.id]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr]
  }
}