output "private_subnet_ids" {
  value = { for k, v in aws_subnet.private_subnet : k => v.id }
}

output "private_sg_id" {
  value = aws_security_group.private_sg.id
}
