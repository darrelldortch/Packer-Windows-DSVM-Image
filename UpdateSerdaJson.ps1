#Get the location the Template file / json file
$templateFilePath = "C:\packer\PackerImage.json"

# Set up the variables
# Update the Service Principal infomration
$ClientID = ""
$ClientSecret =""
#Update Subscription information
$TenantID=""
$SubID=""
#Update the destination Managed Image Resource Group
$MIResourceGroup=""
#Update the image name
$ImageName=""

#Update the Packer build resource group
$BldResourceGroup=""
#Update the private network information *****Please note that without this information the build process will attempt to create a public IP
$PrivateVnet=""
$PrivateSnet=""
$PrivateVnetRG=""

#Location of the scripts folder azure file share with storage key
$ScriptsLocation=""

#Update the Serda Build Json file
((Get-Content -path $templateFilePath -Raw) -replace '<subscription-id>',$SubID) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<tenant-id>',$TenantID) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<client-id>',$ClientID) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<client-secret>',$clientSecret) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<image-name>',$ImageName) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<image-resource-group>',$MIResourceGroup) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<Packer-Build-ResourceGroup>',$BldResourceGroup) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<private-vnet>',$PrivateVnet) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<private-snet>',$PrivateSnet) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<private-vnet-resourcegroup>',$PrivateVnetRG) | Set-Content -Path $templateFilePath
((Get-Content -path $templateFilePath -Raw) -replace '<scripts-storage-location>',$ScriptsLocation) | Set-Content -Path $templateFilePath