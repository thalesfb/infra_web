lab start data-review
cd data-review
vim playbook.yml
mkdir vars
ansible-vault create vars/secret.yml
ansible-navigator run -m stdout --playbook-artifact-enable false playbook.yml --syntax-check --vault-id @prompt
ansible-navigator run -m stdout --playbook-artifact-enable false playbook.yml --vault-id @prompt
lab grade data-review
lab finish data-review