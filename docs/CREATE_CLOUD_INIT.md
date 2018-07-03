# Creating cloud-init scripts

Here's the basic structure for your cloud-init to work.
```bash
├── before_start.sh
├── files
│   └── ssh_key
├── meta-data
└── user-data
```
To make your life easier, there is a [default](../cloud-init/default/user-data) cloud-init, where you just need to set your ssh key.

# Template
Sometimes you need to add bash scripts inside your cloud-init, it could be really annoying to maintain so to make it easier, the nuvm implements a [template schema](../nuvm.d/helpers.d/template.sh)
Basically, It gets all files inside the files directory and insert them inside the user-data, however there are some rules to use it:
- Filenames can contain only letter, numbers and underscore.
- Preferably file with more than one line must be encoded in base64, but nuvm encode it for you, just add b64 at the end of the filename.

## How it works
After creating the vm, nuvm copy the selected cloud-init template to the vm folder and start making the template replaces. It gets the files inside the directory files, use the filename as env variable, and set the content of the file as the content of the variable, like the example bellow:
```bash
# ls files
ssh_key
# export ssh_key=$(cat files/ssh_key)
# envsubst < user-data > /tmp/file
```

and for this to work correctly, inside the user-data file, you need to put the variable $ssh_key where you want to replace, as the example bellow:
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
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
        - $ssh_key

growpart:
  mode: auto
  devices: ['/']
  ignore_growroot_disabled: false
```


## Inserting scripts inside user-data
To insert scripts inside the user-data, you have to specify the filename as a variable, and if your script has more than one line, always use base64 encoding.
```yaml
write_files:
-   path: /opt/install.sh
    encoding: b64           #Setting the base64 encoding
    owner: root:root
    permission: '0777'
    content: |
      $install_b64
```
and inside the files directory create install_b64,
```bash
#!/bin/bash
curl https://teste.com/script.sh | bash
```
Done, just create a vm using this cloud-init template.

# More
There's an official documentation about cloud-init config files,[cloud-init-doc](http://cloudinit.readthedocs.io/en/latest/).
[To learn about before start script, click here.](BEFORE_START_SCRIPT.md)
