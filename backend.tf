terraform {
  backend "gcs" {
    bucket = "aubay-webinar-terraform-state"
    prefix = "aubay\\tfstate-webinar"
  }
}

data "terraform_remote_state" "aubay_webinar_remote_state" {
  backend = "gcs"
  config = {
    bucket = "aubay-webinar-terraform-state"
    prefix = "aubay\\tfstate-webinar"
  }
}