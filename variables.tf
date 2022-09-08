variable "zone" {
  description = "Zone name"
  type        = string
}

variable "project_id" {
  description = "GCP project identifier"
  type        = string
}

variable "region" {
  description = "GCP region name"
  type        = string
}

variable "storage_class" {
  description = "Class of storage of bucket STANDARD/NEARLINE/COLDLINE/ARCHIVE"
  type        = string
  default     = "STANDARD"
}
