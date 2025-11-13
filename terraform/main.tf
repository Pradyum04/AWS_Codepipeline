

# Pass IAM roles to ECS and CodePipeline modules
module "ecs" {
  source = "./modules/ecs"
  cluster_name       = var.ecs_cluster_name
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets
  ecr_repo_url       = module.ecr.repository_url
  ecs_task_execution_role_arn = module.iam.ecs_task_execution_role_arn
}
