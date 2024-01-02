resource "proxmox_virtual_environment_network_linux_bridge" "vmbr2" {
  node_name = var.target_node
  name      = "vmbr2"
  address   = "192.168.2.250/24"
  comment   = "Test VM et TP"
}
