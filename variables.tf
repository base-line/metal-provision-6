variable "project_id" {
  description = "project id"
  type        = string
  default     = ""
}

variable "hostname" {
  description = "hostname"
  type        = string
  default     = ""
}

variable "plan" {
  description = "plan"
  type        = string
  default     = ""
}

variable "facilities" {
  description = "facilities"
  type        = list(any)
  default     = []
}

variable "operating_system" {
  description = "OS"
  type        = string
  default     = ""
}

variable "billing_cycle" {
  description = "billing"
  type        = string
  default     = ""
}