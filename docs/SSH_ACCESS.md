# Getting access to a vm

After creating a vm, you need to login, to do that, you just need to ssh the vm, using your private ssh key, configured on your cloud-init.
```bash
$ ssh -i ~/.ssh/my_nuvm_ssh_private_key nuvm@127.0.0.1 -p2222
$ sudo -i
# whoami
root
```

In case of you forget the binded ssh port, just run
```bash
$ nuvm portfwd list vm-hostname
vm-hostname forwarded ports
Name  Protocol  Guest Port  Host Port
ssh   tcp       2222        22
```

# CAUTION
There's no password for any user, the login is only allowed with ssh keys.
