FROM node:10-alpine AS builder

# On utilise une image multi step car node 10 n'est pas installé sur le système hôte

LABEL maintainer="Fabien Bintz"

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build



FROM nginx:1.27-alpine

COPY --from=builder /app/dist/ /usr/share/nginx/html

COPY nginx/ /etc/nginx

COPY entrypoint.sh /docker-entrypoint.d/entrypoint.sh
