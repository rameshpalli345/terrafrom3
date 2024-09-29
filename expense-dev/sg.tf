module "mysql_sg" {
source = "../../terraform-aws-sg"
project_name = var.project_name
enviornment = var.environment
sg_name = "mysql"
common_tags = var.common_tags
sg_tags = var.sg_tags
vpc_id = module.vpc.vpc_id
}