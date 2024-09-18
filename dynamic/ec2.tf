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

    dynamic "ingress" {

        for_each = var.ingress_rules
        content {
          from_port        = ingress.value[from_port]
        to_port          = ingress.value[to_port]
        protocol         = ingress.value[protocol]
        cidr_blocks      = ingress.value.cidr_blocks  #allow from everyone
        }
        content {
        from_port        = ingress.value[from_port]
        to_port          = ingress.value[to_port]
        protocol         = ingress.value[protocol]
        cidr_blocks      = ingress.value.cidr_blocks  #allow from everyone
    }
    }


}
resource "aws_instance" "terraform" {

        for_each = var.instances

        ami = "ami-09c813fb71547fc4f" 
        instance_type = each.value
        vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
        

        tags = {
            Name = each.key
        }


}


