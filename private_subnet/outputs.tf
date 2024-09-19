
output "private_subnet_sg_id" {
  value = aws_security_group.private_sg.id
}

output "subnets" {
  value = aws_subnet.private_subnet
}