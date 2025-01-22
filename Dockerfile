
FROM node:19.2-alpine3.16
# FROM --platform=linux/amd64 node:19.2-alpine3.16

#como un cd app
WORKDIR /app

COPY package.json ./

#instala dependencias
RUN npm install

#copia todos los archivos en el workdir (los tests) menos los del dockerignore
COPY . .

#realizar testing
RUN npm test

#eliminar todo lo de los tests
RUN rm -rf tests && rm -rf node_modules

#isntala dependencias prod
RUN npm install --prod

#correr la app
CMD [ "node", "app.js" ]





