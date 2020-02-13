FROM node:12

RUN apt-get update
RUN apt-get install git

RUN git clone https://github.com/southball/home-frontend /frontend
RUN git clone https://github.com/southball/home-backend /backend

WORKDIR /frontend
RUN npm install
RUN npm run build

WORKDIR /backend
RUN npm install
RUN npm run build

WORKDIR /backend/build
RUN npm install -g pm2

CMD ["pm2-runtime", "server.js"]