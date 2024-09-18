output "instance_info" {
    value = aws_instance.expense
}

output "aws_ami" {
    value = data.aws_ami.joindevops.id
}