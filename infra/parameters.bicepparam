using '../main.bicep'

// App Service Plan
param appServicePlanName = 'appServicePlan'

// Key Vault
param keyVaultName = 'tmesalles-kv'
param keyVaultRoleAssignments = [
  {
    principalId: 'c52bb0cc-7f22-4c28-aee8-264d1cafbb06'
    roleDefinitionIdOrName: 'Key Vault Secrets User'
    principalType: 'ServicePrincipal'
  }
]

// Container Registry
param registryName = 'tmesalles'
param containerRegistryUsernameSecretName = 'tmesalles-username'
param containerRegistryPassword0SecretName = 'tmesalles-password0'
param containerRegistryPassword1SecretName = 'tmesalles-password1'

// Container App Service
param containerName = 'tmesalles-appservice'
param dockerRegistryImageName = 'tmesalles-dockerimg'
param dockerRegistryImageVersion = 'latest'
