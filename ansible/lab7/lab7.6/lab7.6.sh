lab start role-galaxy
cd ~/role-galaxy
vim roles/requirements.yml
ls roles/
ansible-galaxy install -r roles/requirements.yml -p roles
ls roles/
ansible-galaxy list -p roles
vim use-bash_env-role.yml
ansible-navigator run -m stdout use-bash_env-role.yml
ssh student2@servera
exit
vim roles/requirements.yml
vim ansible.cfg
ansible-galaxy remove student.bash_env
ansible-galaxy install -r roles/requirements.yml
ansible-navigator run -m stdout use-bash_env-role.yml
ssh student2@servera
exit
lab finish role-galaxy