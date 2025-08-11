plugin "terraform" {
  enabled = true
  preset  = "all"
}

rule "terraform_required_providers" {
  enabled = true
}

rule "terraform_standard_module_structure" {
  enabled = false
}


