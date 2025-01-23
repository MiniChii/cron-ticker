#Tarea:
#hacer el build de tareas-comandos\Seccion6_build_y_push.sh pero con distintas plataformas

#1. descargar y correr el builder 
docker buildx create --name mybuilder --driver docker-container --bootstrap

#2.listar builds
docker buildx ls

#3. usar el build que corresponde
#ya estaba el mybuilder para usar

#4.hacer el build con las distintas arquitecturas y subirlas al hub
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t minichii/cron-ticker:1.0.5 --push .

#5. hacer lo mismo para que quede el latest 
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t minichii/cron-ticker --push .

#paso extra para inspeccionar
docker buildx imagetools inspect minichii/cron-ticker:1.0.5