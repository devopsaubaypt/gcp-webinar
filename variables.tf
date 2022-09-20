variable "region" {
  description = "GCP region name"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone name"
  type        = string
  default     = "us-central1-b"
}

variable "project_id" {
  description = "GCP project identifier"
  type        = string
  default     = "comphass-lab-001"
}

variable "storage_class" {
  description = "Class of storage of bucket STANDARD/NEARLINE/COLDLINE/ARCHIVE"
  type        = string
  default     = "STANDARD"
}

variable "bucket_name" {
  description = "bucket_name"
  type        = string
  default     = "aubay-webinar-terraform-state"
}

variable "cluster_name" {
  description = "the name of cluster"
  type        = string
  default     = "webinar-terraform-gke"
}

variable "zones" {
  type        = list(string)
  description = "The zones to create the cluster."
  default     = ["us-central1-b", "us-central1-c", "us-central1-a"]
}

variable "machine_type" {
  type        = string
  description = "Type of the node compute engines."
  default     = "n2d-standard-2"
}

variable "min_count" {
  type        = number
  description = "Minimum number of nodes in the NodePool. Must be >=0 and <= max_node_count."
  default     = 1
}

variable "max_count" {
  type        = number
  description = "Maximum number of nodes in the NodePool. Must be >= min_node_count."
  default     = 3
}

variable "disk_size_gb" {
  type        = number
  description = "Size of the node's disk."
  default     = 20
}

variable "service_account" {
  type        = string
  description = "The service account to run nodes as if not overridden in 'node_pools'. The create_service_account variable default value (true) will cause a cluster-specific service account to be created."
  default     = "terraform@comphass-lab-001.iam.gserviceaccount.com"
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool."
  default     = 3
}

variable "network_name" {
  type        = string
  description = "Default name for project dedicated network"
  default     = "webinar-vpc"
}