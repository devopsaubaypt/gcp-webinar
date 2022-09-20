# https://registry.terraform.io/modules/terraform-google-modules/kubernetes-engine/google/23.1.0


module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  version                    = "23.1.0"
  project_id                 = var.project_id
  name                       = var.cluster_name
  region                     = var.region
  zones                      = var.zones
  network                    = module.network.network_name
  subnetwork                 = module.network.subnets_names[6]
  ip_range_services          = module.network.subnets_names[3]
  ip_range_pods              = module.network.subnets_names[1]
  http_load_balancing        = false
  network_policy             = true
  horizontal_pod_autoscaling = true
  filestore_csi_driver       = false

  node_pools = [
    {
      name            = "default-node-pool"
      machine_type    = var.machine_type
      min_count       = var.min_count
      max_count       = var.max_count
      disk_type       = "pd-standard"
      disk_size_gb    = var.disk_size_gb
      image_type      = "COS_CONTAINERD"
      auto_repair     = true
      auto_upgrade    = true
      service_account = var.service_account
      preemptible     = false
    },
  ]

}