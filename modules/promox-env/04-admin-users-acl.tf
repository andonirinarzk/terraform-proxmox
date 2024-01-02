resource "proxmox_virtual_environment_user" "terraform" {
  comment         = "Terraform account"
  enabled         = true
  expiration_date = "1970-01-01T00:00:00Z"
  groups          = []
  user_id         = "terraform@pve"

  acl {
    path      = "/"
    propagate = true
    role_id   = "Terraform"
  }
}

resource "proxmox_virtual_environment_user" "admlocal" {
  comment         = "admlocal account"
  enabled         = true
  expiration_date = "1970-01-01T00:00:00Z"
  groups          = []
  user_id         = "admlocal@pve"

  acl {
    path      = "/"
    propagate = true
    role_id   = "Administrator"
  }
}


resource "proxmox_virtual_environment_user" "admrazaka" {
  comment         = "admrazaka account"
  enabled         = true
  expiration_date = "1970-01-01T00:00:00Z"
  groups          = []
  user_id         = "admrazaka@pam"

  acl {
    path      = "/"
    propagate = true
    role_id   = "Administrator"
  }
}
