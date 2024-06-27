lab start role-create
cd ~/role-create
mkdir -v roles; cd roles
ansible-galaxy init myvhost
rm -rvf myvhost/{defaults,vars,tests}
cd ..
vim roles/myvhost/tasks/main.yml
vim roles/myvhost/handlers/main.yml
mv -v vhost.conf.j2 roles/myvhost/templates/
mkdir -pv files/html
echo 'simple index' > files/html/index.html
vim use-vhost-role.yml
ansible-navigator run -m stdout use-vhost-role.yml --syntax-check
ansible-navigator run -m stdout use-vhost-role.yml
ansible-navigator run -m stdout verify-httpd.yml
ansible-navigator run -m stdout verify-config.yml
ansible-navigator run -m stdout verify-content.yml
curl http://servera.lab.example.com
lab finish role-create