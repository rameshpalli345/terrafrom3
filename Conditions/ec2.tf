resource "aws_security_group" "allow_ssh_terraform" {
             name = "allow_ssh_terrafom"
            description = "allow ssh for ec2 instances"
    
    tags = {
        Name = "allow_ssh_terrafom"
        company = "toyota"
        Enviornment = "Dev"
    }

    egress {

        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }


}
resource "aws_instance" "terraform" {

        ami = "ami-09c813fb71547fc4f" 
        instance_type = var.enviornment == "prod" ? "t3.micro" : "t2.micro"
        vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
        

        tags = {
            Name = "terraform"
        }


}


