#creacion imagen 1.0.4 y latest
docker build -t minichii/cron-ticker:1.0.4
docker build -t minichii/cron-ticker

#push image al hub https://hub.docker.com/r/minichii/cron-ticker/tags
docker push minichii/cron-ticker:1.0.4
docker push minichii