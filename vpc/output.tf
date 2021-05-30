output "vpc_id" {
  description = "Identificador de la VPC"
  value       = aws_vpc.main.id
}
output "private_subnet_ids" {
  description = "Lista de ID de las subnets privadas"
  value       = aws_subnet.private.*.id
}
output "public_subnet_ids" {
  description = "Lista de ID de las subnets publicas"
  value       = aws_subnet.public.*.id
}
output "private_route_table_id" {
  description = "id de la route table privada"
  value       = aws_route_table.private.id
}
output "public_route_table_id" {
  description = "id de la route table publica"
  value       = aws_route_table.public.id
}