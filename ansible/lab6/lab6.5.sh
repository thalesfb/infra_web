lab start projects-review
cd ~/projects-review
cat host-test.yml
ansible-navigator run -m stdout host-test.yml
vim playbook.yml
mkdir tasks
vim tasks/web_tasks.yml
vim tasks/firewall_tasks.yml
vim tasks/install_and_enable.yml
ansible-navigator run -m stdout playbook.yml --syntax-check
ansible-navigator run -m stdout tasks/web_tasks.yml --syntax-check
ansible-navigator run -m stdout tasks/firewall_tasks.yml --syntax-check
ansible-navigator run -m stdout tasks/install_and_enable.yml --syntax-check
ansible-navigator run -m stdout playbook.yml
lab grade projects-review
lab finish projects-review