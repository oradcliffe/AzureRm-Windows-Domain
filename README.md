# Windows Domain with DFS

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FAzureRm-Windows-Domain%2FUpdates22%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Foradcliffe%2FAzureRm-Windows-Domain%2Fmaster%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

This template deploys a **Windows domain with DFS**. It consists of **two domain controllers and two file servers, along with a generic, domain-joined server**

`Tags: Windows, Active Directory, DFS, DSC`

## Solution overview and deployed resources

This solution will deploy two domain controllers, two file servers, and a generic server, all on Windows Server.  DFS shares for AD groups are configured on the file shares and are given permissions to users based on group membership.  This is all done with DSC and a PS data file (.psd1).

#### Resources

This template deploys five Windows Server VMs, a new VNet, storage account, four public IPs, and four VM nics.  Additionally, to configure the two domain controllers and the two file servers, DSC extensions are used.  The generic windows server uses an additional JSON template to join the domain, so DSC is not used there.  Additionally, to change DNS settings after the first domain controller is promoted, two JSON templates are used to configure the server nics and the VNet settings to point to the DCs for DNS.

## Prerequisites

There are no prerequisites

## Deployment steps

You can click the "deploy to Azure" button at the beginning of this document.  You can change any of the parameters to suit your needs, but pay attention to any exceptions this may cause.

## Notes

AD is populated from the .psd1 file in the root of the repo.  Specific OUs, security groups, and DFS shares are based on the deparment attribute in the user objects in AD.  You can modify this for whatever you need, but the DSC script will be looking for the types of values defined in the .psd1.  If you need to change those then you'll need to change them in the DSC script that configures DC02.
