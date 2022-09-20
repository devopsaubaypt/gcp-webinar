# https://registry.terraform.io/modules/terraform-google-modules/network/google/latest

module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.2.0"

  project_id   = var.project_id
  network_name = var.network_name

  subnets = [
    {
      subnet_name   = "subnet-pods-01"
      subnet_ip     = "10.16.0.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-pods-02"
      subnet_ip     = "10.16.32.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-pods-03"
      subnet_ip     = "10.16.64.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-services-01"
      subnet_ip     = "10.16.96.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-services-02"
      subnet_ip     = "10.16.128.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-services-03"
      subnet_ip     = "10.16.160.0/19"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.16.192.0/19"
      subnet_region = var.region
    }
  ]

  routes = [
    {
      name              = "egress-internet"
      description       = "route through IGW to access internet"
      destination_range = "0.0.0.0/0"
      tags              = "egress-inet"
      next_hop_internet = "true"
    }
  ]

}

