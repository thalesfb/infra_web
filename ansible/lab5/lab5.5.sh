lab start file-review
cd ~/file-review
cat inventory
vim serverb_facts.yml
ansible-navigator run -m stdout serverb_facts.yml
cd templates
vim motd.j2
cd ..
vim motd.yml
ansible-navigator run -m stdout motd.yml --syntax-check
ansible-navigator run -m stdout motd.yml
ssh devops@serverb.lab.example.com
exit
lab grade file-review
lab finish file-review