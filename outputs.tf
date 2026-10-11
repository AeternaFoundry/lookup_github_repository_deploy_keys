output "repository_deploy_keys_lookup_id" {
  description = "Map of id values across all repository_deploy_keys_lookup, keyed the same as var.repository_deploy_keys_lookup"
  value       = { for k, v in data.github_repository_deploy_keys.repository_deploy_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_deploy_keys_lookup_keys" {
  description = "Map of keys values across all repository_deploy_keys_lookup, keyed the same as var.repository_deploy_keys_lookup"
  value       = { for k, v in data.github_repository_deploy_keys.repository_deploy_keys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "repository_deploy_keys_lookup_repository" {
  description = "Map of repository values across all repository_deploy_keys_lookup, keyed the same as var.repository_deploy_keys_lookup"
  value       = { for k, v in data.github_repository_deploy_keys.repository_deploy_keys_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

