module "tf-vpc" {
    source = "../modules"
    environment = "dev"
}

output "vpc_cidr-block" {
    value = module.tf-vpc.vpc_id
}
