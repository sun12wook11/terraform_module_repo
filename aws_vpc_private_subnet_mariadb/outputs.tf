output "private_subnet_mariadb_id" {
  value = aws_subnet.private_subnet_mariadb.id
}
output "private_subnet_mariadb_eip_id" {
  value = aws_eip.private_subnet_mariadb_eip.id
}
output "private_subnet_mariadb_natgw_id" {
  value = aws_nat_gateway.private_subnet_mariadb_natgw.id
}
output "private_subnet_mariadb_rtb_id" {
  value = aws_route_table.private_subnet_mariadb_rtb.id
}
output "private_subnet_mariadb_sg_id" {
  value = aws_security_group.private_subnet_mariadb_sg.id
}