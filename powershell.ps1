# Login to Azure
Connect-AzAccount

# Variables
$resourceGroupName = "myResourceGroup"
$location = "West Europe"
$storageAccountName = "mystorageaccount"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName Standard_LRS -Kind StorageV2 -EnableHttpsTrafficOnly $true