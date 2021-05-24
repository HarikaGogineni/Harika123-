module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "HarikaS"
  instance_count         = 1

  ami                    = "ami-077e31c4939f6a2f3"
  instance_type          = "t2.micro"
  key_name               = "har"
  monitoring             = true
  vpc_security_group_ids = ["sg-d4002ea3"]
  subnet_id              = "subnet-60154e2c"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
