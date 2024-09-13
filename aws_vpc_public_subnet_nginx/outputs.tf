output "public_subnet_nginx_id" {
  value = aws_subnet.public_subnet_nginx.id
}
output "public_subnet_nginx_sg_id" {
  value = aws_security_group.public_subnet_nginx_sg.id
}
output "public_subnet_nginx_igw_id" {
  value = aws_internet_gateway.public_subnet_nginx_igw.id
}