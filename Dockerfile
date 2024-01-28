FROM node:18-alpine
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
RUN yarn build
CMD ["yarn", "run", "serve" ]
EXPOSE 3000