variable "region" {
  type        = string
  description = "AWS region name"
  default     = "us-east-1"
}
variable "environment" {
  type        = string
  description = "The deployment environment state (eg. production, staging, tests)"
  default     = "production"
}
variable "project" {
  type        = string
  description = "GitHub project name for Terraform"
}
variable "github_token" {
  type        = string
  description = "GitHub token for Terraform"
}
variable "ecr_name" {
  type        = string
  description = "Amazon repository name"
}
variable "ecs_port" {
  type        = number
  description = "ECS container port number"
  default     = 5000
}
variable "memory" {
  type        = number
  description = "ECS memory"
  default     = 512
}
variable "cpu" {
  type        = number
  description = "ECS cpu"
  default     = 256
}
variable "type_launch" {
  type        = string
  description = "Container launch type"
  default     = "FARGATE"
}
variable "protocol_type" {
  type        = string
  description = "Container protocol type"
  default     = "HTTP"
}
variable "cidr" {
  type        = string
  description = "Container cidr"
  default     = "0.0.0.0/0"
}
variable "lb_port" {
  type        = number
  description = "Load balancer security group port"
  default     = 80
}