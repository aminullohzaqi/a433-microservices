# mengambil images dari docker hub
FROM node:14-alpine

# menentukan workdir pada folder app
WORKDIR /app

# mengopy semua file yang ada di folder existing ke workdir
COPY . .

# menentukan environment untuk express
ENV NODE_ENV=production DB_HOST=item-db

# command untuk install dependency
RUN npm install --production --unsafe-perm && npm run build

# membuka port 8080
EXPOSE 8080

# menjalankan perintah npm start
CMD ["npm", "start"]