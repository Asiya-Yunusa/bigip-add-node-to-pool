resource "bigip_ltm_node" "node" {
  name             = "${var.node_path}/${var.node_name}"
  address          = "${var.node_address}"
  connection_limit = "${var.node_connection_limit}"
  rate_limit       = "${var.node_rate_limit}"
  fqdn {
    address_family = "${var.node_address_family}"
    interval       = "${var.node_interval}}"
  }
}