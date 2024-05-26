lab start file-manage
cd ~/file-manage
ansible-navigator run -m stdout secure_log_backups.yml --syntax-check
ansible-navigator run -m stdout secure_log_backups.yml
tree -F secure-backups
ansible-navigator run -m stdout copy_file.yml --syntax-check
ansible-navigator run -m stdout copy_file.yml
ssh devops@servera 'ls -Z'
ansible-navigator run -m stdout selinux_defaults.yml --syntax-check
ansible-navigator run -m stdout selinux_defaults.yml
ssh devops@servera 'ls -Z'
ansible-navigator run -m stdout add_line.yml --syntax-check
ansible-navigator run -m stdout add_line.yml
ssh devops@servera 'cat users.txt'
ansible-navigator run -m stdout add_block.yml --syntax-check
ansible-navigator run -m stdout add_block.yml
ssh devops@servera 'cat users.txt'
ansible-navigator run -m stdout remove_file.yml --syntax-check
ansible-navigator run -m stdout remove_file.yml
ssh devops@servera 'ls -l'
lab finish file-manage