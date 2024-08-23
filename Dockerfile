FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --ignore-scripts
COPY index.js .
EXPOSE 80
RUN addgroup -S himgoyal \
    && adduser -S himgoyal -G himgoyal

USER himgoyal

CMD [ "node", "index.js" ]
