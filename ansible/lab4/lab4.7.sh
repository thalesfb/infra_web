lab start control-review
cd /home/student/control-review
vim playbook.yml 
ansible-navigator run -m stdout playbook.yml
curl -k -vvv https://serverb.lab.example.com
lab grade control-review
lab finish control-review