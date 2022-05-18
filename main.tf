terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
      version = "1.13.1"
    }
  } 
  required_version = ">= 0.13"
}

provider "bigip" {
  address  = ""
  username = var.username
  password = var.password
}



module "monitor" {
  source            = "./modules/monitor"
  monitor_destination       = var.monitor_destination
  monitor_name              = var.monitor_name
  monitor_path              = var.monitor_path
  monitor_health_check      = var.monitor_health_check
  monitor_timeout           = var.monitor_timeout
  monitor_interval          = var.monitor_interval
  monitor_type              = var.monitor_type
  password                  = var.password
  username                  = var.username
}

module "node" {
  source            = "./modules/node"
  node_name              = var.node_name
  node_path              = var.node_path
  node_address           = var.node_address
  node_address_family    = var.node_address_family
  node_connection_limit  = var.node_connection_limit
  node_rate_limit        = var.node_rate_limit
  node_interval          = var.node_interval
  password                  = var.password
  username                  = var.username
}

module "pool" {
  source = "./modules/pool"
  pool_name   = var.pool_name
  pool_path   = var.pool_path
  min_active_members = var.min_active_members
#   monitors = module.monitor.name
  load_balancing_mode = var.load_balancing_mode
  password                  = var.password
  username                  = var.username
}

# module "pool_attachment" {
#   source = "./modules/pool_attachment"
#   password                  = var.password
#   username                  = var.username
#   pool                      = module.pool.bigip_ltm_pool.pool.full_path
# }

