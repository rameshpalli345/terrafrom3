module "mysql_sg" {
    source = "../../../terraform-aws-sg"
    project_name = var.project_name
    enviornment = var.environment
    sg_name = "mysql"
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.sg_tags
}