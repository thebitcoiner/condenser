FROM node:6.7

RUN mkdir -p /var/app
WORKDIR /var/app
COPY package.json /var/app
RUN npm install
COPY . /var/app
RUN mkdir tmp
RUN npm run build

ENV PORT 8080
EXPOSE 8080

CMD [ "npm", "run", "prod" ]
