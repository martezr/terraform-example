variable "morpheus_url" {
  type = string
}

variable "morpheus_username" {
  type = string
}

variable "morpheus_password" {
  type      = string
  sensitive = true
}
