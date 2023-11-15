provider "google" {
  project = "fleet-resolver-401019"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = "dareit-t6-bucket-ir"
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket" "bucket" {
  name     = "dareit-t6-bucket-ir"
  location = "US"
}

resource "google_compute_instance" "dareit-t6-vm-ir" {
  name         = "vm-ir-tf"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
  
resource "google_sql_database" "database" {
  name     = "dareit"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "dareit-database-instance"
  region           = "us-central1"
  database_version = "POSTGRES_15"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = "dareit_user"

  instance = google_sql_database_instance.instance.name
  password = "zwf124!"
}
