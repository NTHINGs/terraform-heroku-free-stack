# terraform-heroku-free-stack
Terraform module to create a basic free application. I use it to create ephemeral test environments in NodeJS.

## Usage
See https://www.terraform.io/docs/providers/heroku/index.html#authentication for configuring your credentials for Heroku.

See https://github.com/NTHINGs/Debts/tree/master/infrastructure for an example implementation of a Angular + NodeJS application deployed with this module.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| config_vars | Environment variables set in the app. | map | `{}` | no |
| name | Heroku App Name (Should be unique). | string | - | `yes` |
| region | Heroku region to deploy the app. | string | `us` | no |
| sensitive_config_vars | Sensitive environment variables set in the app. For example db password. | map | `{}` | no |
| tar_build_path | Relative path to a tar file containing the code. | string | - | `yes` |

## Outputs
| Name | Description |
|------|-------------|
| url | Url of the deployed app in heroku |
