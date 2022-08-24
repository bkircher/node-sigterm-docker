FROM node:16-alpine
WORKDIR /srv
COPY . /srv
CMD ["node", "app.js"]
