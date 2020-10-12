# Pull SSM into lambda function environment var

- deploy terraform to create ssm values
- deploy serverelss to create function

## terraform

`terraform.tf` uses the default profile and creates a single ssm parameter of `/vpc/id`

## serverless framework

`serverless.yml` deploys a single pyhton lambda function that calls the vpc id and returns it
