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
````