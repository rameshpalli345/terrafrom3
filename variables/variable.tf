variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    description = "This is ami -RHEL "
    type = string
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    default = "terraform"
    type = string

}

variable "tags" {
    type = map
    default = {
        Name = "terraform"
        Project = "Devops"
        Enviornment= "Dev"
        Company = "Toyota"
    }
}

variable "sg_name" {
        default = "allow_ssh_terraform"
        type = string
}

variable "sg_description" {
     default = "allow ssh for Devops"
     type = string
}
variable "from_port"{
    default = 22
}
variable "to_port" {
    default = 22
}
variable "protocol" {
    default = "tcp"
}
variable "cidr_block" {
    default = ["0.0.0.0/0"]
}