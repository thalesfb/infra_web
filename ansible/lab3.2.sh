#!/bin/bash
lab start data-variables
cd ~/data-variables
vim playbook.yml
ansible-navigator run -m stdout playbook.yml --syntax-check
lab finish data-variables