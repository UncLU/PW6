<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.105.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.105.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.105.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ya_instance_1"></a> [ya\_instance\_1](#module\_ya\_instance\_1) | ./modules/instance | n/a |
| <a name="module_ya_instance_2"></a> [ya\_instance\_2](#module\_ya\_instance\_2) | ./modules/instance | n/a |
| <a name="module_ya_instance_3"></a> [ya\_instance\_3](#module\_ya\_instance\_3) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.network](https://registry.terraform.io/providers/yandex-cloud/yandex/0.105.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.suba](https://registry.terraform.io/providers/yandex-cloud/yandex/0.105.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud ID in yandex cloud | `string` | `"b1grgevrrfola974isml"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Default folder ID in yandex cloud | `string` | `"b1gsvcsqd9jpi9m7nse8"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Use specific availability zone | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | n/a |
| <a name="output_internal_ip_address_vm_3"></a> [internal\_ip\_address\_vm\_3](#output\_internal\_ip\_address\_vm\_3) | n/a |
<!-- END_TF_DOCS -->
