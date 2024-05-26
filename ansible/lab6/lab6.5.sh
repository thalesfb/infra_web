lab start projects-review
cd /home/student/projects-review
cat hosts-test.yml
ansible-navigator run -m stdout host-test.yml
vim playbook.yml
mkdir tasks
vim tasks/web_tasks.yml
vim tasks/firewall_tasks.yml
vim tasks/install_and_enable.yml
ansible-navigator run -m stdout playbook.yml --syntax-check
ansible-navigator run -m stdout playbook.yml
lab grade projects-review
lab final projects-review