resource "proxmox_virtual_environment_network_linux_bridge" "vmbr3" {
  node_name = var.target_node
  name      = "vmbr3"
  address   = "192.168.3.250/24"
  comment   = "Datas and Databases"
}
