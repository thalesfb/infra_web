lab start openshift-multipod
oc whoami --show-context
oc create deployment gitea --port 3030 \
  --image=registry.ocp4.example.com:8443/redhattraining/podman-gitea:latest
oc get po
oc create deployment gitea-postgres --port 5432 -o yaml \
  --image=registry.ocp4.example.com:8443/rhel9/postgresql-13:1 \
  --dry-run=client > postgres.yaml
oc create -f postgres.yaml
oc get po
c expose deployment gitea-postgres
oc get svc
oc expose deployment gitea
oc get route
# Database type: PostgreSQL
# Host: gitea-postgres:5432
# Username: gitea
# Password: gitea
# Database name: gitea
# Server Domain: gitea-ocp-multipod.apps.ocp4.example.com
# Gitea Base URL: http://gitea-ocp-multipod.apps.ocp4.example.com
lab finish openshift-multipod