FROM node:lts-slim

EXPOSE 3000
WORKDIR /home/node/app
RUN npm install

COPY package*.json ./  

COPY . .

CMD ["npm", "start"]
