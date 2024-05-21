lab start openshift-lab
cd ~/DO188/labs/openshift-lab/
oc login --token=sha256~a0tBoyQWolWTqNo0kJGmAgB_7FtSlleCV26RuDW0kzo --server=https://api.ocp4.example.com:6443
vim deployment.yaml
oc apply -f deployment.yaml
oc get pods -l app=quotes-api
oc describe deployment quotes-api
oc apply -f service.yaml
oc get svc
oc describe svc quotes-api
oc describe svc quotes-ui