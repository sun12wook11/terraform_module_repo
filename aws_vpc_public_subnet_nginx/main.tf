# public_subnet_nginx 생성
resource "aws_subnet" "public_subnet_nginx" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_nginx_cidr_block
  availability_zone       = var.public_subnet_nginx_availability_zone
  map_public_ip_on_launch = true
  public_subnet_nginx_name = { Name = var.public_subnet_nginx_name }
}
# 인터넷 게이트 웨이
resource "aws_internet_gateway" "public_subnet_nginx_igw" {
  vpc_id                  = var.vpc_id
  public_subnet_nginx_igw = { Name = var.public_subnet_nginx_igw_name}
}
# 라우팅 테이블 생성 및 인터넷 게이트웨이 연결
resource "aws_route_table" "public_subnet_nginx_rtb" {
  vpc_id                  = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public_subnet_nginx_igw.id
  }
  tags = {
    Name = var.public_subnet_nginx_rtb_name
  }
}

# 서브넷과 라우팅 테이블 연결
resource "aws_route_table_association" "public_subnet_nginx_rtbasso" {
  route_table_id = aws_route_table.public_subnet_nginx_rtb.id
  subnet_id = aws_subnet.public_subnet_nginx.id
}

# 보안 그룹 생성 a
resource "aws_security_group" "public_subnet_nginx_sg" {
  vpc_id                  = var.vpc_id

  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
    from_port   = ingress.value.port
    to_port     = ingress.value.port
    protocol    = ingress.value.protocol
    cidr_blocks = ingress.value.cidr_blocks
    }
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = var.public_subnet_nginx_sg_name }
}
