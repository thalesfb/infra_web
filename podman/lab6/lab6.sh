lab start troubleshooting-lab
podman ps -a
podman logs quotes-ui
podman inspect quotes-ui --format='{{.NetworkSettings.Networks}}'
podman inspect quotes-api-v1 --format='{{.NetworkSettings.Networks}}'
podman inspect quotes-api-v2 --format='{{.NetworkSettings.Networks}}'
podman network ps
podman network inspect troubleshooting-lab
podman rmi registry.ocp4.example.com:8443/redhattraining/quotes-ui-versioning:1.0
podman run -d --rm --name quotes-ui --network troubleshooting-lab -e QUOTES_API_VERSION=v2 -p 3000:8080 registry.ocp4.example.com:8443/redhattraining/quotes-ui-versioning:1.0
cd ~/DO188/labs/troubleshooting-lab
vim nginx.conf
podman stop quotes-ui
podman run -d  --rm --name quotes-ui \
    -p 3000:8080 \
    -e QUOTES_API_VERSION=v2 \
    --network troubleshooting-lab \
    -v ~/DO188/labs/troubleshooting-lab/nginx.conf:/etc/nginx/nginx.conf:Z \
    registry.ocp4.example.com:8443/redhattraining/quotes-ui-versioning:1.0
curl http://localhost:3000
curl http://localhost:3000/api/v1/quotes
curl http://localhost:3000/api/v2/quotes
lab finish troubleshooting-lab