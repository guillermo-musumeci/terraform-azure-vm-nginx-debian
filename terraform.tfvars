####################
# Common Variables #
####################
company     = "kopicloud"
prefix      = "kopi"
environment = "dev"
location    = "northeurope"
description = "Deploy a Linux Virtual Machine with Nginx Open Source"
owner       = "Guillermo Musumeci"

###########
# Network #
###########
network-vnet-cidr = "10.10.0.0/16"
vm-subnet-cidr    = "10.10.1.0/24"

############
# nginx VM #
############
nginx_vm_size        = "Standard_B2s"
nginx_admin_username = "tfadmin"

##################
# Authentication #
##################
azure-subscription-id = "complete-this"
azure-client-id       = "complete-this"
azure-client-secret   = "complete-this"
azure-tenant-id       = "complete-this"
