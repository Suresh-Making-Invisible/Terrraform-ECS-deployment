provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/Vpc"
  vpc_cidr          = var.vpc_cidr
  subnet_cidrs      = var.subnet_cidrs
  availability_zones = var.availability_zones
}

module "ecr" {
  source = "./modules/Ecr"
  ecr_repository_name = var.ecr_repository_name
}

module "iam" {
  source = "./modules/Iam"
  ecr_repository_arn = module.ecr.ecr_repo_arn
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
  log_group_name    = var.log_group_name
  retention_in_days = var.retention_in_days
}

module "ecs" {
  source = "./modules/Ecs"
  cluster_name       = var.cluster_name
  execution_role_arn = module.iam.ecs_task_execution_role_arn
  container_name     = var.container_name
  image              = var.image
  region             = var.region
  log_group_name     = module.cloudwatch.log_group_name
  subnet_ids         = module.vpc.subnet_ids
  security_group_id = module.vpc.security_group_id
  target_group_arn   = module.loadbalancer.target_group_arn
}

module "loadbalancer" {
  source = "./modules/Alb"
  lb_name           = var.lb_name
  target_group_name = var.target_group_name
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.vpc.security_group_id
  subnet_ids        = module.vpc.subnet_ids
}
