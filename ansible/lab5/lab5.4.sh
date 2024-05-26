lab start file-template
cd ~/file-template
vim inventory
vim /etc/motd/motd.j2
ansible-navigator run -m stdout motd.yml --syntax-check
ansible-navigator run -m stdout motd.yml
ssh devops@servera.lab.example.com
lab finish file-template