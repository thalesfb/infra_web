lab start openshift-applications
cd ~/DO188/labs/openshift-applications/podman-hello-client
vim Containerfile
vim cliente.sh
oc whoami --show-context
oc logs hello-client | tail -n 1
oc delete pod hello-client
oc run hello-client --env PORT=8080 \
  --image registry.ocp4.example.com:8443/redhattraining/podman-hello-client:latest
oc get pod
oc logs hello-client | tail -n 1
lab finish openshift-applications