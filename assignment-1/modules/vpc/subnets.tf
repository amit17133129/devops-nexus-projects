# # Subnets

resource "aws_subnet" "public-subnets" {
  count      = 2
  vpc_id     = "${aws_vpc.vpc[0].id}"
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = "${var.az[count.index]}"
  map_public_ip_on_launch = var.public_subnet_map_ip[count.index]
  tags = {
    Name = "${var.env}-${var.public_subnet[count.index]}"
    env  = var.env
  }
}


