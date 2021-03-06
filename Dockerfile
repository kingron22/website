FROM node:12-alpine

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
RUN yarn

COPY . ./
RUN yarn build

EXPOSE 3000
ENV HOST 0.0.0.0

ENTRYPOINT ["yarn", "start"]
