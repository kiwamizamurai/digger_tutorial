resource "random_pet" "example" {
  length = 2
}

resource "random_pet" "pet2" {
  length = 3
}

resource "random_pet" "pet3" {
  length = 2
}

resource "random_pet" "pet4" {
  length = 3
}

resource "random_pet" "pet5" {
  length = 2
}

resource "random_pet" "pet6" {
  length = 3
}

resource "random_pet" "pet7" {
  length = 2
}

output "hello" {
  description = "Demo greeting string including a random pet id"
  value       = "hello from plan policy demo, ${random_pet.example.id}!"
}


