<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.private_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente en el cual se crea el recurso | `string` | `"env"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Entidad a la que pertenece el recurso | `string` | `"tanok"` | no |
| <a name="input_project"></a> [project](#input\_project) | Proyecto en el cual se crea este recurso | `string` | `"poc"` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | Lista de subnets publicas | `list(string)` | n/a | yes |
| <a name="input_resource"></a> [resource](#input\_resource) | Recurso o nombre del recurso a crear | `string` | `"nat"` | no |
| <a name="input_route_table_id"></a> [route\_table\_id](#input\_route\_table\_id) | ID de la route table donde se creara el rounting (privada) | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to resources created with this module | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->