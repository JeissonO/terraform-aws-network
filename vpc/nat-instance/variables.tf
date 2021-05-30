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
variable "vpc_id" {
  description = "ID de la VPC en la que se creara el recurso"
}
variable "public_subnet_ids" {
  type        = list(string)
  description = "Lista de subnets publicas"
}
variable "private_subnet_ids" {
  type        = list(string)
  description = "Lista de subnets privadas"
}
variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Bloque CIDRS para subnet privada"
}
variable "route_table_id" {
  description = "ID de la route table donde se creara el rounting (privada)"
}
variable "image_id" {
  description = "AMI para la instancia  NAT"
  type        = string
  default     = ""
}
variable "enabled" {
  description = "Habilitar o no el manejo de costo de recursos"
  type        = bool
  default     = true
}
variable "use_spot_instance" {
  description = "Utilizado para hacer uso de spot o on-demand EC2 instance"
  type        = bool
  default     = true
}
variable "instance_types" {
  description = "Candidates of spot instance type for the NAT instance. This is used in the mixed instances policy"
  type        = list(any)
  default     = ["t2.micro", "t3a.nano"]
}
variable "key_name" {
  description = "Nombre del key pair para NAT instance. se puede configurar este variable para asignar la key pair"
  type        = string
  default     = ""
}
variable "user_data_write_files" {
  description = "write_files adicionales para la seccion cloud-init"
  type        = list(any)
  default     = []
}
variable "user_data_runcmd" {
  description = "runcmd adicional para la seccion cloud-init"
  type        = list(any)
  default     = []
}
