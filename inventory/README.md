# Play with Inventory

## list static inventory host
```
# ansible-inventory -i inventory --list
{
    "_meta": {
        "hostvars": {}
    },
    "all": {
        "children": [
            "linux",
            "ungrouped",
            "windows"
        ]
    },
    "linux": {
        "hosts": [
            "centos1",
            "linux1",
            "uduntu1"
        ]
    },
    "ungrouped": {
        "hosts": [
            "10.1.10.1",
            "10.1.10.2"
        ]
    },
    "windows": {
        "hosts": [
            "win2k12",
            "win2k16",
            "win2k18"
        ]
    }
}
```