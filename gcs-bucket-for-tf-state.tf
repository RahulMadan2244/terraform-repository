#Terraform state in a Cloud Storage bucket
/*backend "gcs" {
   bucket  = "rahul-gcs-bucket-for-tf-state-file"
   prefix  = "terraform/state"
}
*/
resource "google_storage_bucket" "rahul-gcs-bucket-for-tf-state-file" {
        name = "rahul-gcs-bucket-for-tf-state-file"
        location = "US"
        force_destroy = "true"
        retention_policy {
          retention_period = "3000"
    }
        versioning {
          enabled = true
   }
}
