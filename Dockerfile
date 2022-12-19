ARG NODE_IMAGE=node:16.16.0-alpine
ARG APP_PORT=3001

# ======================================
FROM ${NODE_IMAGE}

WORKDIR /home/app

COPY . .
COPY package*.json .

RUN npm i

EXPOSE $APP_PORT

CMD ["npm", "start"]
