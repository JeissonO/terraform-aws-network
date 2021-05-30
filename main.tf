#####################
##  Deploy a vpc   ## 
#####################
module "vpc" {
  source               = "./vpc"
  cidr_block           = var.cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}
#########################
##  Deploy Nat Gateway ## 
#########################
module "nat_gateway" {
  source            = "./vpc/nat-gateway"
  count             = var.nat_gateway == true ? 1 : 0
  public_subnet_ids = module.vpc.public_subnet_ids
  route_table_id    = module.vpc.private_route_table_id
  tags              = var.tags
}
##########################
##  Deploy Nat Instance ## 
##########################
module "nat_instance" {
  source               = "./vpc/nat-instance"
  count                = var.nat_instance == true ? 1 : 0
  public_subnet_ids    = module.vpc.public_subnet_ids
  private_subnet_ids   = module.vpc.private_subnet_ids
  route_table_id       = module.vpc.private_route_table_id
  vpc_id               = module.vpc.vpc_id
  private_subnet_cidrs = module.vpc.private_subnet_cidrs
  tags                 = var.tags
}
