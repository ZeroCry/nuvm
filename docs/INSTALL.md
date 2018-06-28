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
```bash
[gambler@onion ~]$ nuvm
disk
|--resize
list
|--os
|--images
|--cloud-init
|--runningvms
|--vms
portfwd
|--list
|--create
|--delete
vm
|--stop
|--create
|--delete
|--inspect
|--start
```
