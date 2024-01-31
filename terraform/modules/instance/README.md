# instance

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.105.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.105.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.vm](https://registry.terraform.io/providers/yandex-cloud/yandex/0.105.0/docs/resources/compute_instance) | resource |
| [yandex_compute_image.my_image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.105.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud ID in yandex cloud | `string` | `"b1grgevrrfola974isml"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Default folder ID in yandex cloud | `string` | `"b1gsvcsqd9jpi9m7nse8"` | no |
| <a name="input_instance_family_image"></a> [instance\_family\_image](#input\_instance\_family\_image) | Instance image | `string` | `"lemp"` | no |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | VPC subnet network id | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Use specific availability zone | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm"></a> [external\_ip\_address\_vm](#output\_external\_ip\_address\_vm) | n/a |
| <a name="output_internal_ip_address_vm"></a> [internal\_ip\_address\_vm](#output\_internal\_ip\_address\_vm) | n/a |
<!-- END_TF_DOCS -->
