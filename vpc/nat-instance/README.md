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
| [aws_autoscaling_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_eip.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.eni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_network_interface.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_route.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ingress_any](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Habilitar o no el manejo de costo de recursos | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente en el cual se crea el recurso | `string` | `"env"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | AMI para la instancia  NAT | `string` | `""` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Candidates of spot instance type for the NAT instance. This is used in the mixed instances policy | `list(any)` | <pre>[<br>  "t2.micro",<br>  "t3a.nano"<br>]</pre> | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Nombre del key pair para NAT instance. se puede configurar este variable para asignar la key pair | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Entidad a la que pertenece el recurso | `string` | `"tanok"` | no |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | Bloque CIDRS para subnet privada | `list(string)` | n/a | yes |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | Lista de subnets privadas | `list(string)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Proyecto en el cual se crea este recurso | `string` | `"poc"` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | Lista de subnets publicas | `list(string)` | n/a | yes |
| <a name="input_resource"></a> [resource](#input\_resource) | Recurso o nombre del recurso a crear | `string` | `"nat"` | no |
| <a name="input_route_table_id"></a> [route\_table\_id](#input\_route\_table\_id) | ID de la route table donde se creara el rounting (privada) | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to resources created with this module | `map(any)` | `{}` | no |
| <a name="input_use_spot_instance"></a> [use\_spot\_instance](#input\_use\_spot\_instance) | Utilizado para hacer uso de spot o on-demand EC2 instance | `bool` | `true` | no |
| <a name="input_user_data_runcmd"></a> [user\_data\_runcmd](#input\_user\_data\_runcmd) | runcmd adicional para la seccion cloud-init | `list(any)` | `[]` | no |
| <a name="input_user_data_write_files"></a> [user\_data\_write\_files](#input\_user\_data\_write\_files) | write\_files adicionales para la seccion cloud-init | `list(any)` | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID de la VPC en la que se creara el recurso | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eni_id"></a> [eni\_id](#output\_eni\_id) | ID de la interfaz de red ENI de la NAT instance |
| <a name="output_eni_private_ip"></a> [eni\_private\_ip](#output\_eni\_private\_ip) | IP privada de la interfaz de red  ENI de la NAT instance |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Nombre del IAM role de la NAT instance |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | ID del security group de la NAT instance |
<!-- END_TF_DOCS -->
