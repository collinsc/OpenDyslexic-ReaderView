# syntax=docker/dockerfile:1

FROM node:19-alpine3.15

EXPOSE 61719
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
CMD [ "npm", "run", "serve"]