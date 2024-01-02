resource "proxmox_virtual_environment_network_linux_bridge" "vmbr1" {
  node_name = var.target_node
  name      = "vmbr1"
  address   = "192.168.1.250/24"
  comment   = "K8s cluster inner networking"
}
