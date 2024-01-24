# Ansible commands

# Init Proj
```
touch main_playbook.yml
mkdir inventory
echo '''[local]
localhost ansible_connection=local''' >> inventory/test_app
ansible-galaxy init my_role
```

# Run Ansible
```
ansible-playbook -i inventory/test_app main_playbook.yml
```