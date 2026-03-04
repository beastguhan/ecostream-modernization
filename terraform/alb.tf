resource "aws_lb" "main" {
  name               = "ecostream-alb"
  load_balancer_type = "application"
  subnets            = [aws_subnet.public.id]
}

resource "aws_lb_target_group" "app" {
  port     = 5000
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}
