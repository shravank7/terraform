variable "pet_filename" {
  type    = string
  default = "/tmp/pets.txt"
}

variable "pet_content" {
  type    = string
  default = "my horse is black in colour!"
}

variable "random_pet_prefix" {
  type    = string
  default = "MR"
}

variable "random_pet_separator" {
  type    = string
  default = "."
}

variable "random_pet_length" {
  type    = number
  default = 1
}
