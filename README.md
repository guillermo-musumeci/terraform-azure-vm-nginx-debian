# Deploying an Azure Debian or Ubuntu Linux VM with Nginx using Terraform

Blog --> https://gmusumeci.medium.com/how-to-deploy-a-debian-or-ubuntu-linux-vm-with-nginx-in-azure-using-terraform-92f412c23db5

Update the **source_image_reference** on this section of the **linux-vm-main.tf** file, to configure the distro and version of Linux.

```
source_image_reference {
  publisher = var.ubuntu-publisher
  offer     = var.ubuntu-offer
  sku       = "18.04-LTS" 
  version   = "latest"
}
```

---

# Linux Distros on Azure

Below is a list of Publisher and Offer combinations of endorsed Linux Distros on Azure, use them to list SKUs available.

**Ubuntu Linux Server:**

```
Publisher = "Canonical"
Offer = "UbuntuServer"
```

**Debian:**

```
Publisher = "credativ"
Offer = "Debian"
```

---

# Bootstrapping the Linux Server to Install Nginx Open Source (only valid for Debian and Ubuntu)

Execute a bash script to install to Nginx:

```
#! /bin/bash
sudo apt-get update
sudo apt install nginx -y
```

----

# How to Find Azure Linux VM Images for Terraform using PowerShell

Login into Azure: 

```
Connect-AzAccount
```

The process starts by defining our Azure region using a variable:

```
$Location = "West Europe"
```

Then we define the **Publisher** and the **Offer** using variables: 

```
$Publisher = "Canonical"
$Offer = "UbuntuServer"
```

Finally, we list all SKUs for this OS:

```
Get-AzVMImageSku -Location $Location -PublisherName $Publisher -Offer $Offer | Select Skus
```
