# terraform-vpc-august

module "august" {
  source  = "kaizenacademy/august/vpc"
  version = "2.0.0"
  region = "us-east-2"
  vpc_cidr = "10.0.0.0/16"
  subnet1_cidr = "10.0.1.0/24"
  subnet2_cidr = "10.0.2.0/24"
  subnet3_cidr = "10.0.3.0/24"
  ip_on_launch = true
}