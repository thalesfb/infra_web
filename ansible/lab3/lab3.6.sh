lab start data-facts
cd ~/data-facts
vim display_facts.yml
ansible-navigator run -m stdout display_facts.yml
vim display_specific_facts.yml
ansible-navigator run -m stdout display_specific_facts.yml
vim display_specific_facts.yml
ansible-navigator run -m stdout display_specific_facts.yml
ssh servera
sudo mkdir -p /etc/ansible/facts.d
cd /etc/ansible/facts.d
vim custom.fact
ansible-navigator run -m stdout playbook.yml --syntax-check
ansible-navigator run -m stdout check_httpd.yml
ansible-navigator run -m stdout playbook.yml
ansible-navigator run -m stdout check_httpd.yml
lab finish data-facts
