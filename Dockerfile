FROM node:6.5-wheezy

RUN groupadd -r labs && useradd -r -g labs labs
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

EXPOSE 80
CMD ["node", "index.js"]