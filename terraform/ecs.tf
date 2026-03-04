resource "aws_ecs_cluster" "main" {
  name = "ecostream-cluster"
}

resource "aws_ecs_task_definition" "app" {
  family                   = "ecostream-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name      = "app"
      image     = "nginx"
      essential = true

      portMappings = [
        {
          containerPort = 5000
          hostPort      = 5000
        }
      ]
    }
  ])
}
