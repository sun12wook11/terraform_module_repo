output "private_subnet_sg_id" {
  value = {
    for key, sg in aws_security_group.private_sg :
    key => sg.id
  }
}


output "subnets" {
  value = aws_subnet.private_subnet
}