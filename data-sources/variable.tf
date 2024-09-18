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