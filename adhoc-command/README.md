# Adhoc command

## adhoc command syntax
ansible <inventory-host>/all -m <module-name> -u <machine-user> -k
Note : all will refer all host from inventory file  


# Ping command
```
# ansible all -m ping -u root -k
SSH password:
192.168.194.129 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
192.168.194.130 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
```

# Adhoc command without inventory file

```
$ ansible all -i 192.168.194.129,192.168.194.130, -m ping -u root -k
```

# Adhoc command - Setup Module
```
$ ansible all -m setup -u root -k
```

# Adhoc command - install httpd
```
  ansible all -m yum -a "name=httpd state=latest" -u root -k
  ansible all -m service -a "name=httpd state=started" -u root -k
  ansible all -m service -a "name=httpd state=stopped" -u root -k
  ansible all -m yum -a "name=httpd state=removed" -u root -k
```
