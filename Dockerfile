FROM node:14 as builder
WORKDIR /
COPY . .
RUN npm install

FROM node:14-alpine
WORKDIR /app
COPY --from=builder /package*.json ./
RUN npm install --only=production
EXPOSE 3000
CMD ["node", "./dist/index.js"]
