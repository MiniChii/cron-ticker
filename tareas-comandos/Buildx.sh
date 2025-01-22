
#descarga una imagen y levanta un container que nos permite hacer el build en las distintas plataformas
docker buildx create --name mybuilder --driver docker-container --bootstrap

#setea el builder por default
docker buildx use mybuilder

#inspeccionar
docker buildx use mybuilder

#crear para varias plataformas debe estar en la ruta del dockerfile
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t minichii/cron-ticker:latest --push .

#prueba sin el --platform=$BUILDPLATFORM 
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t minichii/cron-ticker:1.0.4 --push .
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t minichii/cron-ticker:latest --push .