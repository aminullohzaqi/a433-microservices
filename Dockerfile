FROM node:18-alpine as base
WORKDIR /src
COPY . ./
RUN npm install
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
EXPOSE 3000
CMD ["npm", "run", "start"]