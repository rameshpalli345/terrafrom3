variable "project_name" {
        default = "expense"

}
variable "environment" {
    default = "dev"

}

variable "common_tags" {
     default =  {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
     }
}

variable "sql_sg_tags" {
    default = {
        Component = "mysql"
    }

}
variable "backend_sg_tags" {
    default = {
        Component = "backend"
    }

}
variable "fronted_sg_tags" {
    default = {
        Component = "frontend"
    }

}
variable "bastion_sg_tags" {
    default = {
        Component = "bastion"
    }

}
variable "ansible_sg_tags" {
    default = {
        Component = "ansible"
    }

}

variable "app_alb_sg_tags" {
    default = {
        Component = "app-alb"
    }

}

variable "web_alb_sg_tags" {
    default = {
        Component = "web-alb"
    }

}

variable "vpn_tags" {
    default = {
        Component = "vpn"
    }

}
