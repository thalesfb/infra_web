lab start comprehensive-review
podman network create beeper-backend
podman network create beeper-frontend
podman volume create beeper-data
podman run -d --name beeper-db \
  -e POSTGRESQL_USER=beeper \
  -e POSTGRESQL_PASSWORD=beeper123 \
  -e POSTGRESQL_DATABASE=beeper \
  -v beeper-data:/var/lib/pgsql/data --net beeper-backend \
  registry.ocp4.example.com:8443/rhel9/postgresql-13:1
cd ~/DO188/labs/comprehensive-review/beeper-backend
podman build -t beeper-api:v1 .
podman run -d \
  --name beeper-api --net beeper-backend,beeper-frontend \
  -e DB_HOST=beeper-db beeper-api:v1
cd ~/DO188/labs/comprehensive-review/beeper-ui
podman build -t beeper-ui:v1 .
podman run -d \
  --name beeper-ui --net beeper-frontend \
  -p 8080:8080 beeper-ui:v1
lab finish comprehensive-review