podman volume create postgres-vol
podman network create persisting-net

podman volume import postgres-vol /home/student/DO188/labs/persisting-lab/postgres-vol.tar.gz

podman run -d --name persisting-db \
--network persisting-net \
-e POSTGRESQL_USER=user \
-e POSTGRESQL_PASSWORD=pass \
-e POSTGRESQL_DATABASE=db \
-v postgres-vol:/var/lib/pgsql/data \
-v postgres-vol:/home/student/DO188/labs/persisting-lab/postgres-vol.tar.gz:Z \
registry.ocp4.example.com:8443/rhel9/postgresql-13:1

podman run -d --name persisting-backend \
--network persisting-net \
-e DB_HOST=persisting-db \
-p 8080:8080 \
registry.ocp4.example.com:8443/redhattraining/podman-urlshortener-backend

podman run -d --name persisting-frontend \
--network persisting-net \
-p 3000:8080 \
registry.ocp4.example.com:8443/redhattraining/podman-urlshortener-frontend