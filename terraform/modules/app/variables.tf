variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable db_ip {
  description = "database IP"
}
variable use_provisioner {
  description = "use of provisioner or not"
  default     = "false"
}
