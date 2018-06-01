FROM node:9-alpine
RUN apk add --no-cache openssh-client jq
RUN yarn global add redoc-cli
WORKDIR /data
COPY build.sh .
COPY themes themes

