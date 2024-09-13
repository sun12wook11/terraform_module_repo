variable "vpc_id" {
  description = "VPC ID to associate with the subnet."
  type        = string
}
variable "public_subnet_nginx_igw_id" {
  description = "igw_id to associate with the subnet."
  type        = string
}
variable "private_subnet_mariadb_cidr_block" {
  description = "CIDR block for the private subnet."
  type        = string
}
variable "private_subnet_mariadb_availability_zone" {
  description = "Availability zone for the private subnet."
  type        = string
}
variable "private_subnet_mariadb_name" {
  description = "Name tag for the resources."
  type        = string
}
variable "public_subnet_nginx_id" {
  description = "The ID of the public subnet for the Nginx NAT gateway."
  type        = string
}