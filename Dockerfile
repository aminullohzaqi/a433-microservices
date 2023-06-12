FROM node:18-alpine as base
WORKDIR /src
COPY . ./
RUN npm install
EXPOSE 3001
CMD ["npm", "run", "start"]
