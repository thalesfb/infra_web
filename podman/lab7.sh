lab start compose-lab
cd ~/DO188/labs/compose-lab
podman-compose -f compose.yaml down
podman-compose -f compose.yaml up -d
curl http://localhost:3000
lab finish compose-lab
