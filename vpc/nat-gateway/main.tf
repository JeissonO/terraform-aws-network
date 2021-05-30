/* Elastic IP for NAT */
resource "aws_eip" "eip" {
  vpc  = true
  tags = local.common_tags
}
/* NAT Gateway*/
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = element(var.public_subnet_ids, 0)
  tags          = local.common_tags
}
resource "aws_route" "private_route" {
  route_table_id         = var.route_table_id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}