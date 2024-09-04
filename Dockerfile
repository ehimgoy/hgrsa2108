FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --ignore-scripts
COPY index.js .
RUN groupadd -r himgoyal && useradd -r -g himgoyal himgoyal
RUN chown -R himgoyal:himgoyal /usr/src/app
USER himgoyal
EXPOSE 80
CMD [ "node", "index.js" ]
