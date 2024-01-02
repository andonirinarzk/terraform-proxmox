output "vm_name" {
  value = proxmox_virtual_environment_vm.*.name
}

output "vm_id" {
  value = proxmox_virtual_environment_vm.*.vm_id
}

output "vm_address" {
  value = proxmox_virtual_environment_vm.*.address
}

output "vm_gateway" {
  value = proxmox_virtual_environment_vm.*.gateway
}

output "admin account" {
  value = proxmox_virtual_environment_vm.*.username
}
