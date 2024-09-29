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
variable "mysql_tags" {
    default = {
        Function = "mysql"
    }
  
}
variable "frontend_tags" {
    default = {
        Function = "Frontend"
    }
  
}

variable "backend_tags" {
    default = {
        Function = "Backend"
    }
  
}
variable "ansible_tags" {
    default = {
        Function = "ansible"
    }
}

variable "zone_name" {

    default = "crazymonk.online"
        
}


