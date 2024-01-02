resource "proxmox_virtual_environment_pool" "Kubernetes" {
  comment = "Kubernetes nodes"
  pool_id = "Kubernetes"
}
