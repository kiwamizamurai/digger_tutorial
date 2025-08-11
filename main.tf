resource "random_pet" "example" {
  length = 2
}
output "hello" {
  description = "Demo greeting string including a random pet id"
  value       = "hello from plan policy demo, ${random_pet.example.id}!"
}


