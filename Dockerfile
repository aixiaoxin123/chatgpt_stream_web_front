# build front image
FROM node:lts-alpine

RUN npm install pnpm -g

WORKDIR /app

COPY . /app

RUN pnpm install

RUN pnpm build

EXPOSE 1002

CMD ["pnpm", "run", "prod"]
