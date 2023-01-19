FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./web .

RUN chmod -R 777 /root/
RUN chmod -R 777 .
RUN apk add nodejs npm sudo
RUN npm install

CMD ["npm","run", "dev"]