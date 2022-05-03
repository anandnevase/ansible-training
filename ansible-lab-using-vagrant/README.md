# Ansible Lab Using Vagrant And Virtualbox

This repository contains three node ansible lab setup using vagrant and virtualbox as the provider.

|    Node Type   | Node Name             |  IP Address  | OS Flavor     |
| ---------------| --------------------- |--------------|---------------|
| Controller Node| controller.anslab.com | 192.168.10.3 | ubuntu/focal64|
| managed Node   | managed1.anslab.com   | 192.168.10.4 |  centos/7     |
| managed Node   | managed2.anslab.com   | 192.168.10.5 | ubuntu/focal64|

# Steps to Setup lab

## Start Vagrant
```
$ vagrant up --provider=virtualbox
```

## Check Vagrant Status
```
$ vagrant status
```


## Login to Controller & Configure Nodes
```
$ vagrant ssh controller
$ bash /vagrant/key_gen.sh
```

## Test ansible Setup
```
$ ansible all -i /home/vagrant/ansible_project/inventory -m ping
```