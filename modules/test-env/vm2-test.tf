resource "proxmox_virtual_environment_vm" "test_vm" {

  provisioner "local-exec" {
    command = "ansible-inventory --list --yaml --output=Ansible/test-inventory.yml"
  }
  count       = 2
  name        = "test${count.index + 1}"
  description = "Debian pour test by Terraform"
  tags        = ["terraform", "debian", "test"]
  node_name   = var.target_node
  pool_id     = "test"
  vm_id       = count.index + 201


  network_device {
    bridge = "vmbr2"
  }

  clone {
    vm_id = var.clone
  }

  agent {
    # read 'Qemu guest agent' section, change to true only when ready
    enabled = true
  }

  memory {
    dedicated = 1024
  }

  cpu {
    cores   = 1
    sockets = 1
    type    = "host"
  }

  startup {
    order      = count.index + 10
    up_delay   = "30"
    down_delay = "60"
  }


  initialization {
    datastore_id = "local"
    ip_config {
      ipv4 {
        address = "192.168.2.${count.index + 1}/24"
        gateway = "192.168.2.250"
      }
    }
    user_account {
      keys     = [var.ssh_public_key]
      username = var.username
      password = var.password
    }

  }





  operating_system {
    type = "l26"
  }
  /*
  provisioner "remote-exec" {
    inline = [
      "echo Welcome to $(hostname)!",
    ]
  }
*/
}

/*
resource "proxmox_virtual_environment_file" "debian-11_cloud_image" {
    count        = 3
    content_type = "dump"
    datastore_id = "local"
    node_name    = var.target_node

    source_file {
        path = "https://cdimage.debian.org/cdimage/cloud/bullseye/latest/debian-11-genericcloud-amd64.qcow2"
    }

}
*/
