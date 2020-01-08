# Filename: Dockerfile 
FROM node:dubnium
ENV DATABASE_URL=postgres://tpCi:someNotSecurePassword@localhost:5432/psdb JWT_SECRET=123456789 API_PORT=3000 API_HOST=localhost API_PROTOCOL=http
WORKDIR /app
COPY package*.json ./
RUN yarn install && yarn build
COPY . .
EXPOSE 4200
CMD ["yarn", "start"]
