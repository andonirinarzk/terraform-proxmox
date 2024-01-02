provider "proxmox" {
  endpoint  = var.endpoint
  api_token = var.api_token
  #insecure = true //for self-signed certificates
  #  ssh {
  #  agent = true //check first
  #   }
}
