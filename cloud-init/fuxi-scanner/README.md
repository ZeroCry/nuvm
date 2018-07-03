# Fuxi Scanner

To use this cloud-init, edit the file files/ssh_key and add your public ssh key.

Example:

```bash 
nuvm vm create -o Ubuntu_64 -i ubuntu-xenial -H fuxi_scanner -p 2222 -C fuxi-scanner -d 10 -m 2048
```

This command will create a Ubuntu vm with the hostname fuxi_scanner, 10Gb of disk, 2Gb of memory and after the vm start, it create a new port forward rule, to get access to the web interface, the installation proccess may take a while about 5 minutes, depending on your internet connection, after all you can accesse the web interface on,

http://127.0.0.1:5000

password: whoami

If you want to change de default password's, just edit the file files/fuxi_install_b64
