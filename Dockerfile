FROM node:18-alpine
WORKDIR /srv
COPY . /srv
CMD ["node", "app.js"]
