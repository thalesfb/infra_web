lab start playbook-review

cd playbook-review

vim internet.yml

ansible-navigator run -m stdout internet.yml --syntax-check

ansible-navigator run -m stdout internet.yml

lab grade playbook-review
lab finish playbook-review