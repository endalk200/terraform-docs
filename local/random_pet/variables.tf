
variable "file_name" {
  type        = string
  default     = "pet.txt"
  description = "File name to create"
}

variable "file_content" {
  type        = string
  description = "File content to create"
}

variable "prefix" {
  type = string
}

variable "separator" {
  type = string
}

variable "length" {
  type = number
}
