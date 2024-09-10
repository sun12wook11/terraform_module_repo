# 모듈에 사용할 변수 정의
variable "sg_name" {
  description = "name of SG"
  type = string
}

variable "description" {
  description = "description of SG"
  type = string
}

variable "ingrees_port" {
  description = "ingrees port number of SG"
  type = number
}