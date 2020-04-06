resource "google_cloud_run_service" "default" {
  name     = "cloudrun-srv"
  location = "us-central1"
  project  = "temporal-ground-251311"

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello"
      }
    }
  }
}
