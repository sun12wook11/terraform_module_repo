output "private_subnet_fastapi_sg_id" {
  value = aws_security_group.private_subnet_fastapi_sg.id
}
output "private_subnet_fastapi_id" {
  value = aws_subnet.private_subnet_fastapi.id
}