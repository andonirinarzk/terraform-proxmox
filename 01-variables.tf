variable "endpoint" {
  description = "The Proxmox API URL"
  type        = string
}

variable "api_token" {
  description = "The Proxmox API token ID and token secret"
  type        = string
}

variable "target_node" {
  description = "The target node"
  type        = string
}

variable "clone" {
  description = "The clone"
  type        = string
}

variable "ssh_public_key" {
  description = "clé ssh ovh"
  type        = string
}

variable "username" {
  description = "compte administrateur par défaut"
  type        = string
}

variable "password" {
  description = "mot de passe de la vm"
  type        = string
}
