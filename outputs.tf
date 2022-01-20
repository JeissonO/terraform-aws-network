output "vpc_id" {
  description = "Identificador de la VPC"
  value       = module.vpc.vpc_id
}
output "private_subnet_ids" {
  description = "Lista de ID de las subnets privadas"
  value       = module.vpc.private_subnet_ids
}
output "public_subnet_ids" {
  description = "Lista de ID de las subnets publicas"
  value       = module.vpc.public_subnet_ids
}
output "private_route_table_id" {
  description = "id de la route table privada"
  value       = module.vpc.private_route_table_id
}
output "public_route_table_id" {
  description = "id de la route table publica"
  value       = module.vpc.public_route_table_id
}
