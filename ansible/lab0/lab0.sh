sudo dnf install ansible-navigator
ansible-navigator --version
podman login registry.redhat.io
podman pull registry.redhat.io/ansible-automation-platform-22/ee-supported-rhel8:latest
ansible-navigator images
sudo dnf install ansible-core