variable "vpc_id" {
  description = "VPC ID to associate with the subnet."
  type        = string
}
variable "public_subnet_nginx_igw_id" {
  description = "VPC ID to associate with the subnet."
  type        = string
}
variable "public_subnet_nginx_id" {
  description = "CIDR block for the private subnet."
  type        = string
}
variable "private_subnet_fastapi_cidr_block" {
  description = "CIDR block for the private subnet."
  type        = string
}
variable "private_subnet_fastapi_availability_zone" {
  description = "Availability zone for the private subnet."
  type        = string
}
variable "private_subnet_fastapi_name" {
  description = "ID of the public subnet to associate with the NAT gateway."
  type        = string
}
