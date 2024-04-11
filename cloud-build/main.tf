data "terraform_remote_state" "db" {
  backend = "gcs"
  config = {
    # Replace this with your bucket name!
    bucket = "snf-gcp-tf-state"
    #key    = "terraform/state/default.tfstate"
    #region = var.region
  }
}

resource "google_compute_instance" "vm_instance" {
  name         = "solana-node"
  machine_type = var.machine_type

  network_interface {
    network    = "network1"
    subnetwork = google_compute_subnetwork.network1_subnet1.name

    access_config {
      // Ephemeral IP. Leave this block empty if you don't want to assign a public IP.
    }
  }

  tags = ["solana-node"]

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_size # Disk size in GB
      type  = "pd-ssd"
    }
  }
}

