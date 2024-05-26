lab start control-errors
cd ~/control-errors
cat inventory
vim playbook.yml
ansible-navigator run -m stdout playbook.yml
lab finish control-errors