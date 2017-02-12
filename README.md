# Windows Domain with DFS

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FAzureRm-Windows-Domain%2Fgeneralize%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FAzureRm-Windows-Domain%2Fgeneralize%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

To deploy this template using the scripts from the root of this repo: (change the folder name below to match the folder name for this sample)

```PowerShell
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation 'eastus' -ArtifactsStagingDirectory '[foldername]'
```
```bash
azure-group-deploy.sh -a [foldername] -l eastus -u
```
If your sample has artifacts that need to be "staged" for deployment (Configuration Scripts, Nested Templates, DSC Packages) then set the upload switch on the command.
You can optionally specify a storage account to use, if so the storage account must already exist within the subscription.  If you don't want to specify a storage account
one will be created by the script (think of this as "temp" storage for AzureRM) and reused by subsequent deployments.

```PowerShell
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation 'eastus' -ArtifactsStagingDirectory '100-blank-template' -UploadArtifacts 
```
```bash
azure-group-deploy.sh -a 100-blank-template -l eastus -u
```

This template deploys a **solution name**. The **solution name** is a **description**

`Tags: Tag1, Tag2, Tag3`

## Solution overview and deployed resources

This solution will deploy two domain controllers, two file servers, and a generic server, all on Windows Server.

#### Resources

This template deploys five Windows Server VMs, a new VNet, storage account, four public IPs, and four VM nics.  Additionally, to configure the two domain controllers and the two file servers, DSC extensions are used.  The generic windows server uses an additional JSON template to join the domain, so DSC is not used there.  Additionally, to change DNS settings after the first domain controller is promoted, two JSON templates are used to configure the server nics and the VNet settings to point to the DCs for DNS.

## Prerequisites

There are no prerequisites

## Deployment steps

You can click the "deploy to Azure" button at the beginning of this document or follow the instructions for command line deployment using the scripts in the root of this repo.

## Usage

#### Connect

How to connect to the solution

#### Management

How to manage the solution

## Notes

Solution notes
