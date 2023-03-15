resource "aws_security_group" "tf_sec_grp" {
  name        = "jonas_first"
  description = "Enable HTTP for Flask Web Server and SSH port to secure reach to my EC2"
  vpc_id      = var.public_subnet_cidr.id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
}
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
}
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
}

  tags = {
    Name = "jonas_first"
}
}