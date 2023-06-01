# Implicit dependency
# resource "local_file" "pet" {
#   content  = "Hello ${random_pet.my_pet.id}"
#   filename = var.file_name
# }

# resource "random_pet" "my_pet" {
#   prefix    = var.prefix
#   separator = var.separator
#   length    = var.length
# }

# ------------------------------------------------------------

# Explicit dependency
resource "local_file" "pet" {
  content  = "Hello ${random_pet.my_pet.id}"
  filename = var.file_name

  depends_on = [random_pet.my_pet]
}

resource "random_pet" "my_pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

output "random_pet_name" {
  value       = random_pet.my_pet.id
  description = "The name of the pet"
}
