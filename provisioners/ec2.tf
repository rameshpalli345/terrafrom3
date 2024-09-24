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
      ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
      }
    


}
resource "aws_instance" "terraform" {

        ami = "ami-09c813fb71547fc4f" 
        instance_type = "t2.micro"
        vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
        

        tags = {
            Name = "terraform"
        }

    provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"

    }

    connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install mysql -y ",
      "sudo dnf install nginx -y ",
      "sudo systemctl start nginx "
    ]
  }
}
