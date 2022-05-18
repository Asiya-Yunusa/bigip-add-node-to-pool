resource "bigip_ltm_pool" "pool" {
  name                   = "${var.pool_path}/${var.pool_name}"
  load_balancing_mode    = "${var.load_balancing_mode}"
  minimum_active_members = var.min_active_members
  # monitors               = module.monitor.bigip_ltm_monitor.monitor.name
}