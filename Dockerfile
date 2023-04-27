# Dockerfile
FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000

RUN npm install -g serve

CMD ["serve", "-s", "build", "-l", "5000"]
