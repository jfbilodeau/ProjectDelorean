// Bicep template to deploy an App Service Plan and a Web App
param location string = 'canada central'
param appServicePlanName string = 'projectdelorean-asp'
param webAppName string = 'projectdelorean'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'P0V4'
    tier: 'PremiumV2'
    size: 'P0V4'
    capacity: 1
  }
  kind: 'app'
  properties: {
    reserved: false
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
