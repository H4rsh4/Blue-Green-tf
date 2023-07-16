module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-${random_pet.name.id}"
  cidr = var.vpc_cidr_block

  azs             = data.aws_availability_zones.available.names
  # private_subnets = var.private_subnets
  # public_subnets  = var.public_subnets
  private_subnets = slice(var.private_subnet_cidr, 0, var.private_subnet_count)
  public_subnets  = slice(var.public_subnet_cidr, 0, var.public_subnet_count)


  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}


module "app_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/web"
  version = "4.17.1"

  name        = "web-sg"
  description = "Security group for web-servers with HTTP ports open within VPC"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
}

module "lb_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/web"
  version = "4.17.1"

  name        = "lb-sg"
  description = "Security group for load balancer with HTTP ports open to world"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
}