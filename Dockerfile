FROM node:5

ENV LOG_LE_TOKEN=**ChangeMe** \
    NEW_RELIC_APP_NAME=daheim \
    NEW_RELIC_LICENSE_KEY=**ChangeMe** \
    NEW_RELIC_LOG=stdout \
    AZURE_STORAGE_CONNECTION_STRING=**ChangeMe** \
    SECRET=**ChangeMe** \
    SENDGRID_KEY=**ChangeMe** \
    URL=**ChangeMe** \
    HEAPDUMP=**ChangeMe**

EXPOSE 3000
CMD node /app

ADD . /app
RUN cd /app \
  && npm install grunt-cli -g \
  && npm install \
  && grunt \
  && npm prune --production \
  && rm -rf ~/.npm
