# resource "bigip_ltm_pool_attachment" "pool_attachment" {
#   for_each = toset([module.node.bigip_ltm_node.node.address])
#   pool     = module.pool.bigip_ltm_pool.pool.full_path
#   node     = "${each.key}:80"
# }