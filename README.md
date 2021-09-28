# WinVM


## Windows Desktop VM Initial Setup



## Tested on Azure windows 10 and windows 11 images


```
# install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# install WSL2
start cmd "/c wsl --install"

# reload environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# create directory for the powershell profile
start cmd "/c mkdir %USERPROFILE%\Documents\PowerShell"

choco install -y wget 
choco install -y git --params="'/GitAndUnixToolsOnPath /NoAutoCrlf'" --install-arguments="'/DIR=C:\swtools\git'"

# reload environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

mkdir \dev
cd \dev
git clone https://github.com/yanivharpaz/WinVM.git

# download font and theme to the desktop
cd $env:USERPROFILE\Desktop

copy -Force c:\dev\WinVM\setup_files\DelugiaCodeNerdFontComplete.ttf .\
copy -Force c:\dev\WinVM\setup_files\yaniv_dark_01.deskthemepack .\

mkdir config
cd config

copy -Force c:\dev\WinVM\setup_files\*.* .\
copy -Force c:\dev\WinVM\scripts\*.* .\

choco install -y googlechrome

copy -Force "Microsoft.PowerShell_profile.ps1" $env:USERPROFILE\Documents\PowerShell



```

## VM creation script example // Windows 10

```
export NEW_DNS_NAME="tmpVM01"

export NEW_LOCATION="eastus2"
export NEW_RG="rg-home-us2"
export NEW_NSG="nsg-home"

export NEW_SIZE="Standard_D8s_v3"
export NEW_IMAGE="MicrosoftWindowsDesktop:Windows-10:21h1-entn:latest"

export NEW_VM="vm-win-"$NEW_DNS_NAME
export NEW_KV="kv-"$NEW_VM

export NEW_VNET="vnet-home"
export NEW_SUBNET="sub-a"

az vm create \
    --name $NEW_VM  \
    --resource-group $NEW_RG \
    --location $NEW_LOCATION \
    --size $NEW_SIZE  \
    --image $NEW_IMAGE \
    --subnet $NEW_SUBNET \
    --nsg $NEW_NSG \
    --vnet-name $NEW_VNET \
    --public-ip-address-dns-name $NEW_DNS_NAME \
    --public-ip-sku Standard \
    --storage-sku StandardSSD_LRS  \
    --tags 'dept=home' 'project=personal' server=$NEW_VM  \
    --os-disk-size-gb 256 \
    --admin-username "adminXXXX" \
    --admin-password "YYYYYYY" 



```

## setting up a basic network for a region


```

export NEW_LOCATION="westeurope"
export NEW_RG="rg-test-westeurope"
export NEW_NSG="nsg-home"
export CIDR_PREFIX="10.7"

export NEW_VNET="vnet-home"
export NEW_SUBNET="sub-a"

export NEW_HOME_IP="xxx.xxx.xxx.xxx"

# resource group
az group create -n $NEW_RG --location $NEW_LOCATION

# network security group

az network nsg create --location $NEW_LOCATION --name $NEW_NSG --resource-group $NEW_RG

az network vnet create -g $NEW_RG -n $NEW_VNET --address-prefix $CIDR_PREFIX.0.0/16 \
    --subnet-name default-a --subnet-prefix $CIDR_PREFIX.0.0/24
	
az network nsg rule create -g $NEW_RG --nsg-name $NEW_NSG -n rdp_ssh --priority 172 \
    --source-address-prefixes $NEW_HOME_IP/31 --source-port-ranges '*' \
    --destination-address-prefixes '*' --destination-port-ranges 22 3389 --access Allow \
    --protocol '*' --description "Allow home access."	

az network vnet subnet create -g $NEW_RG --vnet-name $NEW_VNET -n sub-a \
    --address-prefixes $CIDR_PREFIX.1.0/24 --network-security-group nsg-home
az network vnet subnet create -g $NEW_RG --vnet-name $NEW_VNET -n sub-b \
    --address-prefixes $CIDR_PREFIX.2.0/24 --network-security-group nsg-home
az network vnet subnet create -g $NEW_RG --vnet-name $NEW_VNET -n sub-c \
    --address-prefixes $CIDR_PREFIX.3.0/24 --network-security-group nsg-home



```


