FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

ENV HOST_IP='http://192.168.56.56/goals/'

CMD [ "npm", "start" ]