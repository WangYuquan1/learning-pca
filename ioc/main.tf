module "network" {
  source = "./modules/network"

  vpc_name                = var.vpc_name
  subnetwork_name         = var.subnetwork_name
  subnet_cidr_range       = var.subnet_cidr_range
  region                  = var.region
  auto_create_subnetworks = var.auto_create_subnetworks
}

module "service-accounts" {
  source  = "terraform-google-modules/service-accounts/google"
  version = "4.1.1"
  # insert the 1 required variable here
  project_id = var.project
}

module "kubernetes-engine_example_deploy_service" {
  source  = "terraform-google-modules/kubernetes-engine/google//examples/deploy_service"
  version = "21.1.0"
  # insert the 7 required variables here
  compute_engine_service_account = module.service-accounts.service_account
  ip_range_pods                  = "ip-range-pods-name"
  ip_range_services              = "ip-range-services-name"
  network                        = var.vpc_name
  project_id                     = var.project
  region                         = var.region
  subnetwork                     = module.network.subnet_name
}