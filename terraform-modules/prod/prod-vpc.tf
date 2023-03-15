module "tf-vpc" {
    source = "../modules"
    environment = "prod"
}

output "vpc_cidr-block" {
    value = module.tf-vpc.vpc_cidr
}