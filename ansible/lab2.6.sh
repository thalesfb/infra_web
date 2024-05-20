lab start playbook-basic
cd ~/playbook-basic

vim site.yml

ansible-navigator run -m stdout site.yml --syntax-check

ansible-navigator run -m stdout site.yml

ansible-navigator run -m stdout site.yml

curl serverc.lab.example.com

curl serverd.lab.example.com

lab finish playbook-basic