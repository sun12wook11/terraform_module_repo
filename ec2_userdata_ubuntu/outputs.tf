# user-data 템플릿 코드를 외부에 노출
output "userdata_ubuntu" {
  value = data.template_file.userdata_ubuntu.rendered
}