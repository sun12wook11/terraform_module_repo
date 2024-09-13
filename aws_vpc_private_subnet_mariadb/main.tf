# 프라이빗 서브넷 생성
resource "aws_subnet" "private_subnet_mariadb" {
  vpc_id                  = var.vpc_id
  cidr_block = var.private_subnet_mariadb_cidr_block  # CIDR 블록 설정 2,3 프라이빗
  availability_zone = var.private_subnet_mariadb_availability_zone  # 가용 영역 설정
  map_public_ip_on_launch = false
  tags = { Name = var.private_subnet_mariadb_name }
}
# NAT 게이트웨이 생성 및 연결
resource "aws_eip" "private_subnet_mariadb_eip" {
  domain = "vpc"
  tags = { Name =  "${var.private_subnet_mariadb_name}_eip" }
}
resource "aws_nat_gateway" "private_subnet_mariadb_natgw" {
  aws_vpc_public_subnet_nginx = var.public_subnet_nginx_id
  allocation_id = aws_eip.private_subnet_mariadb_eip.allocation_id # allocation_id 참조
  tags = { Name = "${var.private_subnet_mariadb_name}_natgw" }
}
# 라우팅 테이블 생성 및 NAT 게이트웨이 연결
resource "aws_route_table" "private_subnet_mariadb_rtb" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.private_subnet_mariadb_natgw.id
  }
}
# 서브넷과 라우팅 테이블 연결
resource "aws_route_table_association" "private_subnet_mariadb_rtbacco" {
  route_table_id = aws_route_table.private_subnet_mariadb_rtb.id
  subnet_id = aws_subnet.private_subnet_mariadb.id
}
# 보안 그룹 생성
resource "aws_security_group" "private_subnet_mariadb_sg" {
  vpc_id                  = var.vpc_id
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "tf22_sg_mariadb" }
}