module "eks" {
    source = "terrfaorm-aws-module/eks/aws
    cluster_name = "eks-prod"
    cluster_version = "1.30"
    subnets         = module.vpc.private_subnets
    vpc_id          = module.vpc.vpc_id
    
    node_groups = {
        default = {
          desired_capacity = 2
          min_capacity   = 3
          max_capacity  =  1
          Instance_type = ["t2.micro"]
          disk_size = 20
        }
    }
} 

    

