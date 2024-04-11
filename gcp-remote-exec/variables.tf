variable "project" {
  type        = string
  description = "The project ID to deploy to"
  default     = "level-slate-373806"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
  default     = "us-central1"

}

variable "zone" {
  type        = string
  description = "The zone to deploy to"
  default     = "us-central1-a"
}

variable "machine_type" {
  type        = string
  description = "The machine type to deploy to"
  default     = "e2-micro"
}

variable "image" {
  type        = string
  description = "The image to deploy to"
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}



variable "user" {
  type    = string
  default = "vladimir.g"
}

variable "email" {
  type    = string
  default = "vladimir.g@europe-cloud.com"
}
variable "privatekeypath" {
  type    = string
  default = "./gcp-key"
}

variable "publickeypath" {
  type    = string
  default = "./gcp-key.pub"
}
