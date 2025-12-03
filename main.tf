provider "aws" {
  region = "${var.region}"
}

locals {
  environment="amy"
  cidr_range_vpc="10.0.0.0/16"
  cidr_range_subnet="10.0.1.0/24"
  cidr_range_route="0.0.0.0/0"
  vpc_id = module.vpc_id.vpc_id
}

module "vpc_id" {
  source = "./modules/vpc"
  cidr_block = local.cidr_range_vpc
  Name = "${local.environment}_vpc"
}

module "aws_internet_gateway" {
  source = "./modules/internet_gw"
  vpc_id = module.vpc_id.vpc_id
  Name = "${local.environment}_IGW"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = local.vpc_id
  Name = "${local.environment}_subnet"
  cidr_range_subnet = local.cidr_range_subnet
}

module "route" {
  source = "./modules/route_table"
  vpc_id = local.vpc_id
  igw_id = module.aws_internet_gateway.igw_id
  cidr_range_route = local.cidr_range_route
  subnet_id = module.subnet.subnet_id
  Name = "${local.environment}_route"
}