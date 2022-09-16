variable "region" {
  description = "GCP region name"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "Zone name"
  type        = string
  default     = "europe-west1-b"
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
