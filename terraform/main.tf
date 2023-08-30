variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "example-instance"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "n1-standard-1"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "example-bucket"
}

resource "google_compute_instance" "example_instance" {
  name         = var.instance_name
  machine_type = var.instance_type
}

resource "google_storage_bucket" "example_bucket" {
  name = var.bucket_name
}
