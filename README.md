# terraform-provider-template
Template repository for terraform modules

## Table of Contents
- [Pre-requirement](#pre-requirements)
- [Usage](#usage)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Pre-requirements

↥ [back to top](#table-of-contents)

- [Terraform](https://www.terraform.io/downloads.html)
- [Vagrant](https://www.vagrantup.com/downloads)

## Usage

↥ [back to top](#table-of-contents)

By selecting storage device `s3.xlarge.x86` we'll get as part of the configuration server with `12x 8TB HDD`. We'll create a RAID 6 array from this `12` disks.


## Providers

↥ [back to top](#table-of-contents)

| Name | Version |
|------|---------|
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

↥ [back to top](#table-of-contents)

| Name | Source | Version |
|------|--------|---------|
| <a name="module_device"></a> [device](#module\_device) | git::github.com/andrewpopa/terraform-metal-device.git | n/a |
| <a name="module_key"></a> [key](#module\_key) | git::github.com/andrewpopa/terraform-metal-project-ssh-key | n/a |

## Resources

↥ [back to top](#table-of-contents)

| Name | Type |
|------|------|
| [template_file.this](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

↥ [back to top](#table-of-contents)

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_cycle"></a> [billing\_cycle](#input\_billing\_cycle) | billing | `string` | `""` | no |
| <a name="input_facilities"></a> [facilities](#input\_facilities) | facilities | `list(any)` | `[]` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | hostname | `string` | `""` | no |
| <a name="input_operating_system"></a> [operating\_system](#input\_operating\_system) | OS | `string` | `""` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | plan | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | project id | `string` | `""` | no |

## Outputs

↥ [back to top](#table-of-contents)

| Name | Description |
|------|-------------|
| <a name="output_public_ipv4"></a> [public\_ipv4](#output\_public\_ipv4) | n/a |
| <a name="output_ssh"></a> [ssh](#output\_ssh) | n/a |