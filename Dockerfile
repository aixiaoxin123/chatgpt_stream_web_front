# build front-end
FROM node:lts-alpine AS frontend

RUN npm install pnpm -g

WORKDIR /app

COPY . /app

RUN pnpm install

RUN pnpm run build



EXPOSE 1002

CMD ["pnpm", "run", "prod"]
