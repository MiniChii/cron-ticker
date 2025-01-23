
FROM node:19.2-alpine3.16 as deps
#como un cd app
WORKDIR /app
COPY package.json ./
#instala dependencias
RUN npm install


###STAGE: test
FROM node:19.2-alpine3.16 as tester
WORKDIR /app
COPY --from=deps /app/node_modules /app/node_modules
#copia todos los archivos en el workdir (los tests) menos los del dockerignore
COPY . .
#realizar testing
RUN npm run test


###STAGE: runner
FROM node:19.2-alpine3.16 as runner
WORKDIR /app
COPY app.js ./
COPY tasks/ ./tasks
COPY package.json ./
RUN npm install --prod


#correr la app
CMD  [ "node", "app.js" ]





