ARG NODE_IMAGE=node:16.16.0-alpine
ARG APP_PORT=3000

# ======================================
FROM ${NODE_IMAGE}

WORKDIR /home/app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE $APP_PORT

CMD ["npm", "start"]
