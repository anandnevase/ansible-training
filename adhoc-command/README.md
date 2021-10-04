# Adhoc command

## adhoc command syntax
```
$ ansible <inventory-host>/all -m <module-name> -u <machine-user> -k
```
Note : all will refer all host from inventory file  


# Ping command
```
$ ansible all -m ping -u ansible -k
SSH password:
192.168.85.129 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
192.168.85.130 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
```

# Adhoc command without inventory file

```
$ ansible all -i 192.168.85.129,192.168.85.130, -m ping -u ansible -k
```

# Adhoc command - Setup Module
```
$ ansible all -m setup -u ansible -k
```

# Adhoc command - install httpd
```
  ansible all -m yum -a "name=httpd state=latest" -u ansible -k -b
  ansible all -m service -a "name=httpd state=started" -u ansible -k -b
  ansible all -m service -a "name=httpd state=stopped" -u ansible -k -b
  ansible all -m yum -a "name=httpd state=removed" -u ansible -k -b
```
