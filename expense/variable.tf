variable "instance_names" {
    default = ["mysql", "frontend", "backend"]
    type = list(string)
}

variable "common_tags" {

        default = {

            Project = "DevOps"
            Enviornment = "Production"
            Company = "Toyota"
        }

}

variable "zone_id" {
     default = "Z09580413H1HBLF6172N0"
}

variable "domain_name" {
    default = "crazymonk.online"
}
