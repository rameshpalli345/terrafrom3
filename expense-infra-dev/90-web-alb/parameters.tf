resource "aws_ssm_parameter" "web_alb_http_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/web_alb_http_listener_arn"
  type  = "String"
  value = aws_lb_listener.http.arn
}

resource "aws_ssm_parameter" "web_alb_https_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/web_alb_https_listener_arn"
  type  = "String"
  value = aws_lb_listener.https.arn
}
