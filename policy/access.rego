package main

import rego.v1

allowed_users := ["admin-user", "devops-lead", "senior-engineer", "kiwamizamurai"]

# METADATA
# title: Apply Access Control
# description: Deny apply operations for unauthorized users
# custom:
#   severity: CRITICAL
deny contains msg if {
  input.operation == "apply"
  not input.github_user in allowed_users
  msg := sprintf("User %s is not authorized to apply", [input.github_user])
}

# METADATA
# title: Plan Access Control
# description: Allow plan operations for all users
warn contains msg if {
  input.operation == "plan"
  msg := sprintf("Plan operation allowed for user %s", [input.github_user])
}