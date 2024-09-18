variable "instances" {
    
    type  = map 
     default = {

        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
     }

}

variable "zone_id" {
     default = "Z09580413H1HBLF6172N0"
}

variable "domain_name" {
    default = "crazymonk.online"
}
