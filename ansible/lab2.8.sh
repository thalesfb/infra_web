lab start playbook-multi
cd ~/playbook-multi
vim intranet.yml
ansible-navigator run -m stdout intranet.yml --syntax-check
ansible-navigator run -m stdout intranet.yml
curl http://servera.lab.example.com
lab finish playbook-multi