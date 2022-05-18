resource "bigip_ltm_monitor" "monitor" {
  name        = "${var.monitor_path}/${var.monitor_name}"
  parent      = "${var.monitor_path}/${var.monitor_type}"
  send        = "${var.monitor_health_check}"
  timeout     = "${var.monitor_timeout}"
  interval    = "${var.monitor_interval}"
  destination = "${var.monitor_destination}"
}      