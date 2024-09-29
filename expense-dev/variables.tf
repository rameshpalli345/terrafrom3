variable "project_name" {
        default = "expense"

}
variable "environnment" {
    default = "dev"
  
}
variable "cidr_block" {
    default = "10.0.0.0/16"
}

# Optional

variable "common_tags" {
     default =  {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
     }
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24" , "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["10.0.11.0/24" , "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
    default = ["10.0.21.0/24" , "10.0.22.0/24"]
}

variable "sg_tags" {
    default = {
        Componet = "mysql"
    }
} 
variable "vpc_id" {
    default = "vpc-0b35542ef9c1c672b"
}


