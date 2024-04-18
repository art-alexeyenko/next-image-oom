# escape=`

#
# Development-only image for running Next.js in a containerized environment.
# Assumes that the Next.js rendering host source is mounted to c:\app.
#
ARG PARENT_IMAGE="node:18.20.2-alpine"
FROM ${PARENT_IMAGE}

RUN mkdir /app
WORKDIR /app

COPY ./demo /app/
RUN chown -R node:node /app
USER node
#Base dependencies
RUN npm install 
#Install sharp
RUN npm i sharp
RUN npm rebuild --arch=x64 --platform=linux --libc=musl sharp
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]
