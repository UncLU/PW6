variable "instance_family_image" {
  description = "Instance image"
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}

variable "name_srv" {
  description = "name server"
  type        = string
  default     = "vm"
}
