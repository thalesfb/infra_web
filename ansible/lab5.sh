lab start file-review

cd file-review

nano serverb_facts.yml

---
- name: Display ansible_facts
  hosts: serverb.lab.example.com
  tasks:
    - name: Display facts
      debug:
        var: ansible_facts

ansible-navigator run \
> -m stdout serverb_facts.yml

cd templates
nano motd.j2
System total memory: {{ ansible_facts['memtotal_mb']}} MiB .
System processor count: {{ ansible_facts['processor_count']}}

cd ..
 cd file-review
 
 nano motd.yml

---
- name: Configure system
  hosts: all
  remote_user: devops
  become: true
  tasks:
    - name: Configure a custom /etc/motd
      ansible.builtin.template:
        src: templates/motd.j2
        dest: /etc/motd
        owner: root
        group: root
        mode: 0644

    - name: Check file exists
      ansible.builtin.stat:
        path: /etc/motd
      register: motd

    - name: Display stat results
      ansible.builtin.debug:
        var: motd

    - name: Copy custom /etc/issue file
      ansible.builtin.copy:
        src: files/issue
        dest: /etc/issue
        owner: root
        group: root
        mode: 0644

    - name: Ensure /etc/issue.net is symlink to /etc/issue
      ansible.builtin.file:
        src: /etc/issue
        dest: /etc/issue.net
        state: link
        owner: root
        group: root
        force: yes

ansible-navigator run \
-m stdout motd.yml --syntax-check

ansible-navigator run -m stdout motd.yml

ssh devops@serverb.lab.example.com

exit

lab grade file-review