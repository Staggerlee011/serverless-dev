provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_ssm_parameter" "vpc_id" {
  name        = "/vpc/id"
  description = "vpc id"
  type        = "SecureString"
  value       = data.aws_vpc.default.id
}

output "vpc_id" {
  description = "default vpc id"
  value       = data.aws_vpc.default.id
}
