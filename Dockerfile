FROM node:18

WORKDIR /app

COPY package*.json ./

RUN bun install

COPY bundle.js ./

EXPOSE 8000

ENTRYPOINT [ "bun" ]

CMD [ "bundle.js" ]