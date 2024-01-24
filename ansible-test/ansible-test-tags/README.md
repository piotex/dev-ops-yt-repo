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

# Conclusions
1. if tag which is set in 'include' field is passed, all included tasks will be trigered
2. if tag which is not set in 'include' field is passed, only tasks which this tag will be trigered
3. if no tag is passed, all tasks will be trigered
