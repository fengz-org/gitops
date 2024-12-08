# resource "aws_instance" "app_server" {
#   ami           = "ami-01ec84b284795cbc7"
#   instance_type = "t3.micro"

#   subnet_id = data.aws_subnet.sanbox_private_subnet_1a.id
#   vpc_security_group_ids = [data.aws_security_group.default_security_group.id]

#   tags = {
#     Name = "sandbox-test-instance"
#   }
# }
