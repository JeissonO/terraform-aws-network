# terraform-aws-network
Modulo de red que permite crear una VPC en AWS con opción de crearla con una NAT Gateway, con una NAT Instance o con ninguna de las 2. 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.7.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nat_gateway"></a> [nat\_gateway](#module\_nat\_gateway) | ./vpc/nat-gateway |  |
| <a name="module_nat_instance"></a> [nat\_instance](#module\_nat\_instance) | ./vpc/nat-instance |  |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./vpc |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR de la VPC | `string` | `"20.0.0.0/16"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente en el cual se crea el recurso | `string` | `"env"` | no |
| <a name="input_nat_gateway"></a> [nat\_gateway](#input\_nat\_gateway) | Identifica si desea crear la VPC con una NAT Gateway | `bool` | `false` | no |
| <a name="input_nat_instance"></a> [nat\_instance](#input\_nat\_instance) | Identifica si desea crear la VPC con una NAT Instance | `bool` | `false` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Entidad a la que pertenece el recurso | `string` | `"tanok"` | no |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | Bloque CIDRS para subnet privada | `list(string)` | <pre>[<br>  "20.0.4.0/24",<br>  "20.0.5.0/24",<br>  "20.0.6.0/24"<br>]</pre> | no |
| <a name="input_project"></a> [project](#input\_project) | Proyecto para el cual se crea el recurso | `string` | `"tanok-study"` | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | Bloque CIDRS para subnet publica | `list(string)` | <pre>[<br>  "20.0.1.0/24",<br>  "20.0.2.0/24",<br>  "20.0.3.0/24"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to resources created with this module | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_route_table_id"></a> [private\_route\_table\_id](#output\_private\_route\_table\_id) | id de la route table privada |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Lista de ID de las subnets privadas |
| <a name="output_public_route_table_id"></a> [public\_route\_table\_id](#output\_public\_route\_table\_id) | id de la route table publica |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Lista de ID de las subnets publicas |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | Identificador de la VPC |
<!-- END_TF_DOCS -->