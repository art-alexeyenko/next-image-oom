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
RUN npm install
EXPOSE 3000
RUN npm run build
#CMD ["npm", "run", "build"]
CMD ["npm", "run", "start"]
