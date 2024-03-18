<!-- BEGIN_TF_DOCS -->

# Pro Support

<a href="https://www.opszero.com"><img src="https://media.opszero.com/insights/brands/logo/2023/04/26/02/04/12/opsZero_logo.svg" width="300px"/></a>

[opsZero provides support](https://www.opszero.com/devops) for our modules including:

-   Slack & Email support
-   One on One Video Calls
-   Implementation Guidance
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_github"></a> [github](#provider\_github) | 6.1.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The vpc\_id to add the security group into | `string` | `""` | no |
## Resources

| Name | Type |
|------|------|
| [aws_security_group.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [github_ip_ranges.action](https://registry.terraform.io/providers/integrations/github/6.1.0/docs/data-sources/ip_ranges) | data source |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
<!-- END_TF_DOCS -->