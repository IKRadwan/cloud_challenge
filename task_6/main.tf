provider "google" {
  project = "fleet-resolver-401019"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "bucket_2_dareit_tf" {
  name     = var.bucket_2
  location = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
  }
}

resource "google_storage_bucket_iam_member" "member" {
  provider = google
  bucket = var.bucket_2
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}


resource "google_compute_instance" "instance_2_dareit_tf" {
  name         = var.instance_2
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
  
resource "google_sql_database" "db_dareit_tf" {
  name     = var.database_2
  instance = google_sql_database_instance.db_instance_dareit_tf.name
}

resource "google_sql_database_instance" "db_instance_dareit_tf" {
  name             = var.database_instance_2
  region           = "us-central1"
  database_version = "POSTGRES_15"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "true"
}

resource "google_sql_user" "users" {
  name     = var.database_user

  instance = google_sql_database_instance.db_instance_dareit_tf.name
  password = var.db_password
}
