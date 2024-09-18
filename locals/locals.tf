locals {
    domain_name = "crazymonk.online"
    Zone_id = "Z09580413H1HBLF617"
    instance_type = var.enviornment == "prod" ? "t3.medium" : "t3.micro"

    # count.index will not work in locals
}