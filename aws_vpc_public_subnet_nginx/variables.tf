variable "vpc_id" {
  description = "id of vpc"
  type = string
}
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
    protocol = optional(string, "tcp") # optional 테라폼 1.3.0이상만 사용가능
    cidr_blocks = optional(list(string), ["0.0.0.0/0"])
  }))
}