variable "cloud_id" {
  description = "Cloud"
}
variable "cnt_inst" {
  description = "count of instance"
  default     = "1"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "app_zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "region_id" {
  description = "Zone"
  default = "ru-central1"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "bucket_name" {
  description = "bucket name"
}
variable "access_key" {
  description = "access key"
}
variable "secret_key" {
  description = "secret key"
}
