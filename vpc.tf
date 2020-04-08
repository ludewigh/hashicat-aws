module "vpc" {
  source  = "app.terraform.io/Ludewigh/vpc/aws"
  version = "2.33.0"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}