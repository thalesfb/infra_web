lab start role-system
cd ~/role-system
ansible-galaxy collection list
mkdir -p collections
ansible-galaxy collection install -p collections/ redhat-rhel_system_roles-1.19.3.tar.gz
ansible-galaxy collection list
vim configure_time.yml
cat collections/ansible_collections/redhat/rhel_system_roles/roles/timesync/README.md
mkdir -pv group_vars/all
vim group_vars/all/timesync.yml
mkdir -pv group_vars/{na_datacenter,europe_datacenter}
timedatectl list-timezones | grep Chicago
timedatectl list-timezones | grep Helsinki
echo "host_timezone: America/Chicago" > group_vars/na_datacenter/timezone.yml
echo "host_timezone: Europe/Helsinki" > group_vars/europe_datacenter/timezone.yml
ansible-navigator run -m stdout configure_time.yml --syntax-check
ansible-navigator run -m stdout configure_time.yml
ssh servera date
ssh serverb date
lab finish role-system