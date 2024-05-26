lab start control-handlers
cd ~/control-handlers
vim configure_webapp.yml`
ansible-navigator run -m stdout configure_webapp.yml --syntax-check
ansible-navigator run -m stdout configure_webapp.yml
ansible-navigator run -m stdout configure_webapp.yml
lab finish control-handlers