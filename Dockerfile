# syntax=docker/dockerfile:1

FROM node:18-alpine

RUN npm install pm2@latest --global

WORKDIR /app
COPY . .

RUN npm install --omit=dev

CMD ["npm", "run", "serve"]

EXPOSE 3000
