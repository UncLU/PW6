terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.105.0"
    }
  }
  required_version = ">=0.105.0"
}

provider "yandex" {
  service_account_key_file = "/home/unclelu/Documents/LearningDevOps/ModuleB6/PW6/terraform/sa.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

data "yandex_compute_image" "my_image" {
  family = var.instance_family_image
}

resource "yandex_compute_instance" "vm" {
  name = var.name_srv
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.my_image.id
    }
  }

  network_interface {
    subnet_id = var.vpc_subnet_id
    nat       = true
  }

  metadata = {
#    ssh-keys = "unclelu${file("~/Documents/LearningDevOps/ModuleB6/PW6/terraform/key.pub")}"
#    ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519_vm.pub")}"
     user-data = "#cloud-config\nusers:\n  - name: unclelu\n    groups: sudo\n    shell: /bin/bash\n    sudo: 'ALL=(ALL) NOPASSWD:ALL'\n    ssh-authorized-keys:\n      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIINTut5xJ7mEstcrmRPQuvXqx2wqN7zXQmvjHC6jila3 unclelu@unclelu"
  }
}
