provider "aws" {
  region = "us-east-1"
}

module "docker-instance" {
  source  = "jonasberg034/docker-instance/aws"
  key_name = "clarusway" # change here
  docker-instance-ports = [22, 80, 8080, 81, 82]
}

output "pub_ip" {
    value = module.docker-instance.instance_public_ip.*
  
}