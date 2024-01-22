module "falcon_operator" {
  source = "./modules/operator"

  client_id        = var.client_id
  client_secret    = var.client_secret
  sensor_type      = var.sensor_type
  environment      = var.environment
  falcon_admission = var.falcon_admission
  operator_version = var.operator_version
  node_sensor_mode = var.node_sensor_mode
}

module "falcon_kpa" {
  source = "./modules/k8s-protection-agent"

  client_id        = var.client_id
  client_secret    = var.client_secret
  docker_api_token = var.docker_api_token
  cid              = var.cid
  cloud            = var.cloud
  cluster_name     = var.cluster_name
}
