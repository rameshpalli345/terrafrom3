locals {
    resource_name = "${var.project_name}-${var.environment}-vpn"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
   public_subnet_ids = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
    vpn_sg_id = data.aws_ssm_parameter.vpn_sg_id.value
  
}