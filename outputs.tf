output "this" {
  value = vault_azure_secret_backend_role.this
}

output "role_path" {
  value = "${try(var.backend.path, var.backend)}/creds/${vault_azure_secret_backend_role.this.role}"
}