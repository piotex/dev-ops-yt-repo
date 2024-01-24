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
sudo ansible-playbook -i inventory/hosts playbook.yml --tags install
sudo ansible-playbook -i inventory/hosts playbook.yml --tags stop
sudo ansible-playbook -i inventory/hosts playbook.yml --tags start
sudo ansible-playbook -i inventory/hosts playbook.yml --tags status
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
sudo ansible-playbook -i inventory/hosts playbook.yml 
```
Will triger all tasks in following ordes:
```
TASK [role1 : Install Apache (httpd) on Ubuntu] 
TASK [role1 : Start and enable Apache service on Ubuntu] 
TASK [role1 : Stop Apache (apache2) service on Ubuntu] 
TASK [role2 : Check Apache (apache2) service status on Ubuntu] 
TASK [role2 : Display Apache service status] 
***********************************************************************************************************
ok: [localhost] => {
    "msg": "Status:      Active: inactive (dead) since Wed 2024-01-24 16:40:35 CET; 383ms ago"
}
```