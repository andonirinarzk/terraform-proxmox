resource "proxmox_virtual_environment_network_linux_bridge" "vmbr4" {
  node_name = var.target_node
  name      = "vmbr4"
  address   = "192.168.4.250/24"
  comment   = "Apps and Studies"
}
