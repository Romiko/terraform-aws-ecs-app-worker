variable "name" {
  description = "Name of your ECS service"
}

variable "memory" {
  default     = "512"
  description = "Hard memory of the container"
}

variable "cpu" {
  default     = "0"
  description = "Hard limit for CPU for the container"
}

variable "cluster_name" {
  default = "Name of existing ECS Cluster to deploy this app to"
}

variable "service_role_arn" {
  description = "Existing service role ARN created by ECS cluster module"
}

variable "task_role_arn" {
  description = "Existing task role ARN created by ECS cluster module"
}

variable "image" {
  description = "Docker image to deploy (can be a placeholder)"
  default = "dnxsolutions/nginx-hello:latest"
}

variable "vpc_id" {
  description = "VPC ID to deploy this app to"
}

variable "alarm_sns_topics" {
  default = []
  description = "Alarm topics to create and alert on ECS service metrics"
}
