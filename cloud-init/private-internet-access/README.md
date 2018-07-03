# Private Internet Access - Cloud Init

To use this cloud-init, edit the file files/install_pia_b64 and change the strings USERNAME and PASSWORD, with your PIA credentials, by default the vm will connect on a Brazillian VPN, to change that, just edit the line 25 and 26.

To get ssh access to the vm, edit the file files/ssh_key and add your public ssh key.

Example:

```bash 
nuvm vm create -o Debian_64 -i debian-9 -H vpn -p 2222 -C private-internet-access -d 10 -m 2048
```

This command will create a Debian vm with the hostname vpn, 10Gb of disk, 2Gb of memory and when the vm starts, it'll be connected on PIA.

