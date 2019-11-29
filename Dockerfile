FROM nginx:1.17

RUN mkdir -p /app/public
COPY ./src /app/public

RUN rm /etc/nginx/conf.d/*.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080