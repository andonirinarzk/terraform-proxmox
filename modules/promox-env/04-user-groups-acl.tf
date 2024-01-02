resource "proxmox_virtual_environment_group" "App-users" {
  comment  = "Application Users"
  group_id = "App-users"
  acl {
    path      = "/pool/App"
    propagate = true
    role_id   = "PVEVMUser"
  }
}

resource "proxmox_virtual_environment_group" "Test-users" {
  comment  = "Test builders"
  group_id = "Test-users"
  acl {
    path      = "/pool/Test"
    propagate = true
    role_id   = "PVEVMUser"
  }
}

resource "proxmox_virtual_environment_group" "DevOps-admins" {
  comment  = "DevOps administrators"
  group_id = "DevOps-admins"
  acl {
    path      = "/pool/Kubernetes"
    propagate = true
    role_id   = "PVEVMUser"
  }
}

resource "proxmox_virtual_environment_group" "Data-admins" {
  comment  = "Data administrators"
  group_id = "Data-admins"
  acl {
    path      = "/pool/Data"
    propagate = true
    role_id   = "PVEVMUser"
  }
}


