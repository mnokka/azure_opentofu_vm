
## POC for checking OpenTofu as Terraform replacement for Azure VM creation using Nix 23.11

[Using Microsoft base example](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform?tabs=azure-cli)


Using in Nixos environment:

1) execute *nix.shell* to load Azure and OpenTofu commands

2) *az login* -> go through Azure login process in the opened web browser

3) *tofu init*

4) *tofu plan*

5) *tofu apply*



If VM creation was ok, local machine public key must be added to VM .ssh/authorized_keys file. Azure seems to want RSA keys. (dir and file protections chmod 700/600). Use Azure web UI portal to connect to the created machine via shell for this operation. Nano editor to create the file.

Log into new VM from local machine: ssh -v YOUR_AZURE_ACCOUNT@NEW_VM_IP_ADDRESS

Destroy VM (to stop possible billing):

    *tofu plan -destroy*
    *tofu apply*



NOTE: Check finally VM status via Azure WEBUI protal, you might have to stop(and delete) VM via the portal!!! 
