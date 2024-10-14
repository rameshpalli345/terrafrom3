locals {
    resource_name = "${var.project_name}-${var.environment}-backend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
   private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
    backend_sg_id = data.aws_ssm_parameter.backend_sg_id.value
    app_alb_listener_arn = data.aws_ssm_parameter.app_alb_listener_arn.value
  
}