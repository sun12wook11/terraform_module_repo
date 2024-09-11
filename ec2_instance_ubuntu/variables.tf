# #여기있는 애들 쓰는게 아니고 가져온 깃허브에서 참조 중이기에 일단 주석
# variable "ami" {
#   description = "ami of instance"
#   type = string
# }
# variable "instance_type" {
#   description = "instance_type of instance"
#   type = string
# }
# variable "key_name" {
#   description = "key_name of instance"
#   type = string
# }
# variable "instance_name" {
#   description = "instance_name of instance"
#   type = string
# }
# variable "security_group_id" {
#   description = "security_group_id of instance"
#   type = string
# }
variable "user_data" {
  description = "user script to execute"
  type = string
}
