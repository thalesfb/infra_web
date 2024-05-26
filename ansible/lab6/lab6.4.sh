lab start projects-file
cd ~/projects-file
cat tasks/environment.yml
cat tasks/firewall.yml
cat tasks/placeholder.yml
cat plays/test.yml
vim playbook.yml
ansible-navigator run -m stdout playbook.yml --syntax-check
ansible-navigator run -m stdout playbook.yml
lab finish projects-file