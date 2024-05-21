lab start playbook-manage
cd ~/playbook-manage
vim ansible-navigator.yml

ansible-navigator images

vim ansible.cfg

ansible-navigator run -m stdout ping-myself.yml

ansible-navigator run -m stdout ping-intranetweb.yml
ansible-navigator run -m stdout ping-internetweb.yml
ansible-navigator run -m stdout ping-web.yml
ansible-navigator run -m stdout ping-all.yml

ansible-navigator run -m stdout ping-intranetweb.yml

lab finish playbook-manage