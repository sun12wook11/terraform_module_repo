# 모듈에 사용할 변수 정의
variable "sg_name" {
  description = "name of SG"
  type = string
}

variable "description" {
  description = "description of SG"
  type = string
}

variable "ingress_port" {
  description = "ingress port number of SG"
  type = number
}
variable "ingress_port_fastapi" {
  description = "ingress port number of SG"
  type = number
}
variable "ingress_port_nginx" {
  description = "ingress port number of SG"
  type = number
}
variable "ingress_port_mariadb" {
  description = "ingress port number of SG"
  type = number
}
variable "ingress_port_ssh" {
  description = "ingress port number of SG"
  type = number
}
