lab start role-collections
cd ~/role-collections
ansible-galaxy collection install /home/student/role-collections/gls-utils-0.0.1.tar.gz -p collections
ansible-navigator collections
ansible-navigator doc -m stdout gls.utils.newping
vim bck.yml
ansible-navigator run -m stdout bck.yml --syntax-check
ansible-navigator run -m stdout bck.yml
ansible-galaxy collection install -r requirements.yml -p collections
ansible-galaxy collection list
ansible-navigator collections
ansible-navigator run -m stdout new_system.yml --check
lab finish role-collections