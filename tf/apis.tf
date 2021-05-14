/**
 * Copyright Google LLC 2021
 * Google Confidential, Pre-GA Offering for Google Cloud Platform
 * (see https://cloud.google.com/terms/service-terms)
 */

module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "10.3.2"

  project_id = var.project_id

  # Don't disable the services
  disable_services_on_destroy = false
  disable_dependent_services  = false

  activate_apis = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "clouddeploy.googleapis.com"
  ]
}
