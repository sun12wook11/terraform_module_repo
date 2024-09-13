variable "vpc_id" {
  description = "VPC ID to associate with the subnet."
  type        = string
}
variable "public_subnet_nginx_igw_id" {
  description = "VPC ID to associate with the subnet."
  type        = string
}

variable "private_subnet_fastapi_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}
variable "private_subnet_fastapi_availability_zone" {
  description = "Availability zone for the private subnet"
  type        = string
}
variable "private_subnet_fastapi_name" {
  description = "Name tag for the private subnet"
  type        = string
}
variable "public_subnet_nginx_id" {
  description = "The ID of the public subnet for the Nginx NAT gateway."
  type        = string
}