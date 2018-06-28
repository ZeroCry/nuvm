# Creating cloud-init scripts

First of all, there's an official documentation about cloud-init config files,[cloud-init-doc](http://cloudinit.readthedocs.io/en/latest/).

But to make your life more easier, there is a [default](../cloud-init/default/user-data) cloud-init, where you just need to set your ssh key.

```yaml
#cloud-config

# Hostname management
preserve_hostname: False
hostname: HOSTNAME
fqdn: HOSTNAME.DOMAIN

# Remove cloud-init when finished with it
runcmd:
  - [ ifdown, eth0 ]
  - [ ifup, eth0 ]

# Configure where output will go
output:
  all: ">> /var/log/cloud-init.log"

# configure interaction with ssh server
ssh_svcname: ssh
ssh_deletekeys: True
ssh_genkeytypes: ['rsa', 'ecdsa', 'ed25519']

users:
  - default
  - name: nuvm
    gecos: nuvm
    primary-group: nuvm
    groups: users
    ssh-import-id: nuvm
    lock-passwd: false
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
        - SSH_KEY

growpart:
  mode: auto
  devices: ['/']
ignore_growroot_disabled: false
```
You just need to replace your public ssh key, in the place of SSH_KEY, but it's recommended that you copy this default template, and create your own on top of the default.

[To learn about before start script, click here.]('BEFORE_START_SCRIPT.md')
