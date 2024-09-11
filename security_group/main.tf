# 보안그룹 모듈 리소스 정의
resource "aws_security_group" "this" {
  name          = var.sg_name
  description   = var.description
  ingress {
    description = "Allow [newone] from anywhere"
    from_port = var.ingress_port
    to_port = var.ingress_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow fastapi from anywhere"
    from_port = var.ingress_port_fastapi
    to_port = var.ingress_port_fastapi
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow nginx from anywhere"
    from_port = var.ingress_port_nginx
    to_port = var.ingress_port_nginx
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow mariadb from anywhere"
    from_port = var.ingress_port_mariadb
    to_port = var.ingress_port_mariadb
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow ssh from anywhere"
    from_port = var.ingress_port_ssh
    to_port = var.ingress_port_ssh
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.sg_name
  }
}
