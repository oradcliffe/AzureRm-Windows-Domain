$resourcegroupname = RG1
$resourcegroupdeploymentname = RG1deployment1


#Login to azure
Login-AzureRmAccount

# create a new resource group
New-AzureRmResourceGroup -Name $resourcegroupname -Location "Central US"

# deploy the template to the resource group
New-AzureRmResourceGroupDeployment -Name $resourcegroupdeploymentname -ResourceGroupName $resourcegroupname -TemplateFile simple_deployment.json -TemplateParameterFile simple_deployment.params.json