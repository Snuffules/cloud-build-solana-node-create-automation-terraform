variable "project" {
  type        = string
  description = "The project ID to deploy to"
  default     = "vladimir-europe-cloud-tests"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
  default     = "europe-west-3"

}

variable "zone" {
  type        = string
  description = "The zone to deploy to"
  default     = "europe-west-3-a"
}

variable "machine_type" {
  type        = string
  description = "The machine type to deploy to"
  default     = "e2-medium"
  #  default     = "n2d-highmem-64"
}

variable "image" {
  type        = string
  description = "The image to deploy to"
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
  # default     = "ubuntu-2004-focal-v20230417"  
}

variable "privatekeypath" {
  type    = string
  default = "./id_rsa"
}

variable "user" {
  type    = string
  default = "****"
}

variable "boot_disk_size" {
  default = 2000
}