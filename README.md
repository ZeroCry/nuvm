# nuvm
Virtualbox CLI Manager

# Why nuvm?
WAIT, I'll explain this ASAP.

# Why not use Vagrant?
Because I don't want to.:stuck_out_tongue:

# Documentation
1. First Step's
  - [Installation](docs/INSTALL.md)
  - [Configure Images](docs/CONFIGURE_IMAGES.md)
  - [Create Cloud Images](docs/CREATE_CLOUD_INIT.md) 
    - [Before Start Script](docs/BEFORE_START_SCRIPT.md)

2. VM Administration
  - [Create a VM](docs/CREATE_VM.md)
  - [Accessing a VM](docs/SSH_ACCESS.md)

# Cloud-Init Templates
If you use this project and have some interesting cloud-init template, make a PR.
These are the templates so far:
- [private-internet-access](cloud-init/private-internet-access) - A template to install all necessary to run [PIA](https://www.privateinternetaccess.com/), and start it together with the vm.
- [fuxi-scanner](cloud-init/fuxi-scanner) - A template to install all necessary to run [Fuxi Scanner](https://github.com/jeffzh3ng/Fuxi-Scanner).

# RoadMap
- [x] Images Resize 
- [x] Create Port Forwarding to specific vms
- [ ] Support to create vms with bridge interface
- [ ] Support to add bridge interfaces on created vms
- [ ] Create vm using a custom VDI
- [ ] Support Virtualbox Encryption
- [ ] Implement template(like jinja2) on cloud-init, to replace contents on the user-data
