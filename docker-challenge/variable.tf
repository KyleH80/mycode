variable "internal_port" {
  type        = number
  default     = 9876
  description = "Internal port to be used"
}

variable "external_port" {
  type        = number
  default     = 5432
  description = "External port to be used"
}

variable "container_name" {
  type        = string
  default     = "Alta3ResearchWebService"
  description = "Name of the Container"
}

