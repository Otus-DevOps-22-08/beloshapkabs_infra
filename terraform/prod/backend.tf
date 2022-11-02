terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "lesson9-backend"
    region     = "ru-central1"
    key        = "prod/terraform.tfstate"
    access_key = "YCAJEmAY2Y08wrIbFmGFMEV_t"
    secret_key = "YCOfd3Hi9v5JefbUOmiDwKvY9TfJizzt5B6dtV8n"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
