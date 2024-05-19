lab start playbook-inventory
cd playbook-inventory
ansible-navigator inventory -i inventory -m stdout --list
ansible-navigator inventory -i inventory -m stdout --graph ungrouped
ansible-navigator inventory -i inventory -m stdout --graph development
ansible-navigator inventory -i inventory -m stdout --graph testing
ansible-navigator inventory -i inventory -m stdout --graph production
ansible-navigator inventory -i inventory -m stdout --graph us
ansible-navigator inventory -i inventory
lab finish playbook-inventory