package main

import rego.v1

# METADATA
# title: Resource Count Limit
# description: Deny plans with more than 5 resources
# custom:
#   severity: HIGH
deny contains msg if {
    count(input.planned_values.root_module.resources) > 5
    msg := "Too many resources in plan (max: 5)"
}

