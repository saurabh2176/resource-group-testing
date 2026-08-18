rgss1 = {
  rg1 = {
    name     = "rg-test1"
    location = "india south central"
    tags = {
      environment = "testing"
      owner       = "lokesh"
    }
  }
}

vnet2 = {
  vnets = {
    name                = "vnet-prod"
    location            = "india south central"
    resource_group_name = "rg-test1"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet2 = {
  subnets = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-test1"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

publicip2 = {
  public_ips = {
    name                = "frontend-ip"
    resource_group_name = "rg-test1"
    location            = "india south central"
    allocation_method   = "Static"
  }
}

nic2 = {
  nics = {
    name                 = "frontend-nic"
    location             = "india south central"
    resource_group_name  = "rg-test1"
    subnet_name          = "frontend-subnet"
    virtual_network_name = "vnet-prod"
    resource_group_name  = "rg-test1"
    public_ip_name       = "frontend-ip"
  }
}

vm2 = {
  vms = {
    vm_name              = "frontend-vm"
    nic_name             = "frontend-nic"
    location             = "india south central"
    resource_group_name  = "rg-test1"
    size                 = "Standard_D2ls_v5"
    admin_username       = "devopsuser"
    admin_password       = "P@ssw0rd1234!"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
    owner                = "lokesh"
    environment          = "testing"
  }
}