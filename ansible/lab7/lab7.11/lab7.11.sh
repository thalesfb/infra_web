lab start role-review
cd ~/role-review
ansible-galaxy collection install -p collections/ redhat-rhel_system_roles-1.19.3.tar.gz
ansible-galaxy collection list | grep redhat.rhel_system_roles
vim web_dev_server.yml
ansible-navigator run -m stdout web_dev_server.yml --syntax-check
mkdir roles
vim roles/requirements.yml
ansible-galaxy role install -r roles/requirements.yml -p roles
ansible-galaxy init roles/apache.developer_configs
cp developer_tasks.yml roles/apache.developer_configs/tasks/
mv developer.conf.j2 roles/apache.developer_configs/templates/developer.conf.j2
mv web_developers.yml roles/apache.developer_configs/vars/
ansible-navigator run -m stdout web_dev_server.yml --syntax-check
ansible-navigator run -m stdout web_dev_server.yml
mv selinux.yml roles/apache.developer_configs/vars/
vim web_dev_server.yml
ansible-galaxy collection install ansible.posix
ansible-navigator run -m stdout web_dev_server.yml --syntax-check
ansible-navigator run -m stdout web_dev_server.yml
lab grade role-review
lab finish role-review