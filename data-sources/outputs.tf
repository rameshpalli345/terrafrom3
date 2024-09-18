output "aws-ami" {
    value = data.aws_ami.joindevops.id
}