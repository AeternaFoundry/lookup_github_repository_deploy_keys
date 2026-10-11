data "github_repository_deploy_keys" "repository_deploy_keys_lookup" {
  for_each = var.repository_deploy_keys_lookup

  repository = each.value.repository
}

