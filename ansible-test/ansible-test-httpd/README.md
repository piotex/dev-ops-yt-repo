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
sudo ansible-playbook -i inventory/hosts playbook.yml
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
