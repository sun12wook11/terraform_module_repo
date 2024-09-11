# user-data 템플릿 코드를 외부에 노출
output "userdata_fastapi" {
  value = data.template_file.userdata_fastapi.rendered
}