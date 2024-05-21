lab start data-secret
cd ~/data-secret
ansible-vault edit secret.yml
vim create_users.yml
ansible-navigator run -m stdout --playbook-artifact-enable false create_users.yml --syntax-check --vault-id @prompt
echo 'redhat' > vault-pass
chmod 0600 vault-pass
ansible-navigator run -m stdout create_users.yml --vault-password-file=vault-pass
ssh -o PreferredAuthentications=password ansibleuser1@servera.lab.example.com
lab finish data-secret