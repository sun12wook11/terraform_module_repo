# variable "instance_name" {
#   description = "id of instance_name"
#   type = string
# }
variable "public_subnet_nginx_cidr_block" {
  description = "id of public_subnet_nginx_cidr_block"
  type = string
}
variable "public_subnet_nginx_availability_zone" {
description = "id of public_subnet_nginx_availability_zone"
type = string
}

# ${}로 일괄 처리 가능
variable "public_subnet_nginx_name" {
  description = "id of public_subnet_nginx_name"
  type = string
}
variable "public_subnet_nginx_igw_name" {
  description = "id of public_subnet_nginx_igw_name"
  type = string
}
variable "public_subnet_nginx_rtb_name" {
  description = "id of public_subnet_nginx_rtb_name"
  type = string
}
variable "public_subnet_nginx_sg_name" {
  description = "id of public_subnet_nginx_sg_name"
  type = string
}

variable "inbound_ports" {
  description = "id of inbound_ports"
  type = list(object({
    port = number
    protocol = string
    cidr_blocks = list(string)
  }))
}