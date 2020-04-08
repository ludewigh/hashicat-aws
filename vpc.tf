module "vpc" {
  source  = "app.terraform.io/Ludewigh/vpc/aws"
  version = "2.33.0"

    name = "ludeiwgh-simple-example"

  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnet_tags = {
    Name = "overridden-name-public"
  }

  tags = {
    Owner       = "ludewigh"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "vpc-name-ludewigh"
  }
}