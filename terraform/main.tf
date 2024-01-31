terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.105.0"
    }
  }
  required_version = ">=0.105.0"


  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket = "bucket-tf-new"
    region = "ru-central1-a"
    key    = "issue/lemp.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.

  }
}

provider "yandex" {
  service_account_key_file = "./sa.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_vpc_network" "network" {
  name = "network"
}

resource "yandex_vpc_subnet" "suba" {
  name           = "suba"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

module "ya_instance_1" {
  source                = "./modules/instance"
  name_srv              = "vm1"
  instance_family_image = "ubuntu-2004-lts"
  vpc_subnet_id         = yandex_vpc_subnet.suba.id
}

module "ya_instance_2" {
  source                = "./modules/instance"
  name_srv              = "vm2"
  instance_family_image = "ubuntu-2004-lts"
  vpc_subnet_id         = yandex_vpc_subnet.suba.id
}

module "ya_instance_3" {
  source                = "./modules/instance"
  name_srv              = "vm3"
  instance_family_image = "centos-7"
  vpc_subnet_id         = yandex_vpc_subnet.suba.id
}
