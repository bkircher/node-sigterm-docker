FROM node:18-alpine
WORKDIR /srv
COPY . /srv

# Make sure to use exec form of ENTRYPOINT, not the shell form. The shell form
# does not pass signals.
# https://docs.docker.com/engine/reference/builder/#entrypoint
ENTRYPOINT ["node", "app.js"]
