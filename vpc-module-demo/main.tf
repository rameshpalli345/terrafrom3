module "vpc" {
    source = "../../terraform-aws-vpc"
    project_name = var.project_name
    enviornment = var.enviornment
    common_tags = var.common_tags
    cidr_block = var.cidr_block
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs


}