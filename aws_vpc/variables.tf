variable "vpc_cidr_block" {
  description = "cidr_block of vpc"
  type = string
}
variable "enable_dns_hostnames" {
  description = "enable_dns_hostnames of vpc"
  type = bool
}
variable "enable_dns_support" {
  description = "enable_dns_support of vpc"
  type = bool
}
variable "vpc_name" {
  description = "instance_name of instance"
  type = string
}