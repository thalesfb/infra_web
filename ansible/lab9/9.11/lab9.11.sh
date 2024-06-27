lab start system-review
cd ~/system-review
vim repo_playbook.yml
ansible-navigator run -m stdout repo_playbook.yml
vim users.yml
ansible-navigator run -m stdout users.yml
ansible-galaxy collection install -p collections/ redhat-rhel_system_roles-1.19.3.tar.gz
vim storage.yml
ansible-navigator run -m stdout storage.yml
vim create_crontab_file.yml
ansible-navigator run -m stdout create_crontab_file.yml
vim network_playbook.yml
ansible-navigator run -m stdout network_playbook.yml
lab grade system-review
lab finish system-review