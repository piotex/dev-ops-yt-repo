# Setup slave machine
[Download Centos 9 x86_64](https://www.centos.org/download/)
[How to CentOS and Static IP](https://www.youtube.com/watch?v=wwnQy4XVJ6I&list=WL&index=150)
Centos:
```
nmtui 
```
```
useradd jenkins_agent
passwd jenkins_agent
usermod -aG test_group jenkins_agent

sudo visudo
    jenkins_user ALL=(ALL) NOPASSWD:ALL
```
Ubuntu:
```
ssh-keygen -t rsa -b 2048 -C "jenkins_agent@192.168.56.57"
    /home/peter/.ssh/id_rsa-jenkins_agent@192.168.56.57
ssh-copy-id -i /home/peter/.ssh/id_rsa-jenkins_agent@192.168.56.57 jenkins_agent@192.168.56.57
```

# Ansible commands

# Init Proj
```
touch playbook.yml
mkdir roles
mkdir inventory
echo '''[local]
localhost ansible_connection=local''' >> inventory/hosts
cd roles && ansible-galaxy init role1 && ansible-galaxy init role2
```

# Run Ansible
```
ansible-playbook -i inventory/hosts playbook.yml 
```

# File structure
```
my_ansible_project/
|-- roles/
|   |-- role1/
|   |   |-- tasks/
|   |   |   |-- main.yml
|   |   |-- ...
|   |-- role2/
|   |   |-- tasks/
|   |   |   |-- main.yml
|   |   |-- ...
|-- inventory/
|   |-- hosts
|-- playbook.yml
```

# Conclusions
Command:
```

```