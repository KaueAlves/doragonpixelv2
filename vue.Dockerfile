FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./web .

RUN apk add nodejs npm sudo
RUN npm install
RUN chmod -R 777 /root/
RUN chmod -R 777 .
RUN chmod -R 777 /usr/share/nginx/html

CMD npm install; npm run dev;
