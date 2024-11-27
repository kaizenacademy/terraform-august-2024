module "august" {
  source       = "kaizenacademy/august/vpc"
  version      = "4.0.0"
  region       = "us-east-1"
  vpc_cidr     = "192.168.0.0/16"
  subnet1_cidr = "192.168.1.0/24"
  subnet2_cidr = "192.168.2.0/24"
  subnet3_cidr = "192.168.3.0/24"
  ip_on_launch = true
  port = [
    { from_port = 22, to_port = 22 },
    { from_port = 80, to_port = 80 },
    { from_port = 443, to_port = 443 },
    { from_port = 3306, to_port = 3306 },
    { from_port = 5000, to_port = 5000 },
    { from_port = 3000, to_port = 3002 },
  ]
}