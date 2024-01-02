resource "proxmox_virtual_environment_role" "Terraform" {
  role_id = "Terraform"
  privileges = [
    "Datastore.AllocateSpace",
    "Datastore.Audit",
    "Pool.Allocate",
    "Pool.Audit",
    "SDN.Use",
    "Sys.Modify",
    "VM.Allocate",
    "VM.Audit",
    "VM.Clone",
    "VM.Config.CDROM",
    "VM.Config.CPU",
    "VM.Config.Cloudinit",
    "VM.Config.Disk",
    "VM.Config.HWType",
    "VM.Config.Memory",
    "VM.Config.Network",
    "VM.Config.Options",
    "VM.Monitor",
    "VM.PowerMgmt",
  ]
}
