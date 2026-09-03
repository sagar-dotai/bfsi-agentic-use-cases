provider "aws" {}

resource "aws_instance" "payments_app" {
  ami           = "ami-0abcd1234"
  instance_type = "m5.4xlarge"
  count         = 3
  tags = { env = "prod", service = "payments" }
}

resource "aws_instance" "payments_dev" {
  ami           = "ami-0abcd1234"
  instance_type = "t3.large"
  count         = 2
  tags = { env = "dev", service = "payments" }
}

module "k8s_cluster" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = "payments-cluster"
  node_groups = {
    workers = {
      desired_capacity = 4
      instance_type    = "m5.large"
    }
  }
}

resource "aws_s3_bucket" "analytics_storage" {
  bucket = "company-analytics-prod"
  acl    = "private"
  versioning { enabled = true }
  server_side_encryption_configuration {
    rule { apply_server_side_encryption_by_default { sse_algorithm = "aws:kms" } }
  }
}
