# Installation

To install nuvm, you first need to install all the dependencies.

Dependency | Description
------------ | -------------
VirtualBox | Used to virtualizition
genisoimage | Used to generate the cloud init iso
qemu | Used to image convertion and to mount vdi images
axel | Used to download images

Then clone the project, and create an alias on some directory on your PATH
```bash
git clone https://github.com/mthbernardes/nuvm.git
cd nuvm
sudo ln -s -f $(pwd)/nuvm /usr/local/bin/nuvm
```

After that you'll be able to call the nuvm program from anywhere.

## Available commands
```bash
[gambler@onion ~]$ nuvm
disk
|--resize               Resize disk in Gb
list
|--os                   List virtualbox OS's templates
|--images               List available images 
|--cloud-init           List available cloud-init scripts
|--runningvms           List running VM's
|--vms                  List all your VM's
portfwd
|--list                 List port forwarding of a specifc vm
|--create               Create a port forwarding for a specfic vm
|--delete               Delete a port forwarding of a specfic vm
vm
|--stop                 Stop a VM 
|--create               Create a VM
|--delete               Delete a VM
|--inspect              Inspect a VM
|--start                Start a VM
```
