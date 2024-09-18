variable "ingress_rules" {
    default = [
        {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    },

    {
        
        from_port        = 8080
        to_port          = 8080
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }
    

    ]
  
}