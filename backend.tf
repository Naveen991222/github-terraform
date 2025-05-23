terrfaorm {
    backend "s3" {
        bucket = "eks-prod-terraform-state"
        key   = "eks-cluster/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "eks-prod-lock"              # <-- You will create this
        encrypt        = true

    }
}