variable "repository_deploy_keys_lookup" {
  description = <<EOT
Map of repository_deploy_keys_lookup, attributes below
Required:
    - repository
EOT

  type = map(object({
    repository = string
  }))
}

