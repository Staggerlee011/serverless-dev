# Serverless SSM

examples of using ssm with serverless framework.

## Pull SSM straight into lambda function

In this example we pull the SSM value straight into the function. This means the value never hard coded anywhere

- [readme](ssm-lambda\README.md)

## Pull SSM into lambda function environment var

In this example we pull the SSM value into the function as a environment variable. This means the value can be seen in aws console and various other places

- [readme](ssm-env\README.md)