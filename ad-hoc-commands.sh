ansible -m ping all
ansible all -m  ping
ansible all -a "free -h"
ansible all -a "fdisk -l"
ansible all -m command -a "dest=/opt/CloudGen  state=directory"

