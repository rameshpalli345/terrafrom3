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

variable "app_alb_tags" {
    default = {
        Component = "app-alb"
    }
      
}

variable "vpn_tags" {
    default = {
        Component = "vpn"
    }
      
}




variable "zone_name" {
    default = "crazymonk.online"
}

