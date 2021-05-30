variable "environment" {
  description = "Ambiente en el cual se crea el recurso"
  default     = "env"
}
variable "organization" {
  description = "Entidad a la que pertenece el recurso"
  default     = "tanok"
}
variable "project" {
  description = "Proyecto en el cual se crea este recurso"
  default     = "poc"
}
variable "resource" {
  description = "Recurso o nombre del recurso a crear"
  default     = "nat"
}
variable "tags" {
  description = "Tags applied to resources created with this module"
  type        = map(any)
  default     = {}
}
locals {
  common_tags = merge({ Name = "${var.environment}_${var.project}_${var.resource}" }, var.tags, )
}
variable "public_subnet_ids" {
  type        = list(string)
  description = "Lista de subnets publicas"
}
variable "route_table_id" {
  description = "ID de la route table donde se creara el rounting (privada)"
}
