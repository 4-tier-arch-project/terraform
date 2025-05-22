module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source          = "./modules/eks"
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  public_subnets  = module.vpc.public_subnets
  cluster_name    = "dev-eks"
}

module "ecr" {
  source = "./modules/ecr"
  repo_names = ["app-repo"]
}