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

variable "file_content_1" {
  type = string
}

variable "file_content_2" {
  type = string
}