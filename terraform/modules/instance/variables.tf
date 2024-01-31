variable "folder_id" {
  description = "Default folder ID in yandex cloud"
  type        = string
  default     = "b1gsvcsqd9jpi9m7nse8"
}

variable "cloud_id" {
  description = "Cloud ID in yandex cloud"
  type        = string
  default     = "b1grgevrrfola974isml"
}

variable "zone" {                                # Используем переменную для передачи в конфиг инфраструктуры
  description = "Use specific availability zone" # Опционально описание переменной
  type        = string                           # Опционально тип переменной
  default     = "ru-central1-a"                  # Опционально значение по умолчанию для переменной
}
