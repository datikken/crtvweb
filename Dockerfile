#frontend
FROM node:latest AS frontend
WORKDIR /usr/src/app
COPY ./package.json ./
RUN npm install

#backend
FROM php:8.2 AS base
ENV APP_HOME=/app

RUN apt-get update -y && apt-get install -y openssl zip unzip git npm
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo sockets pcntl

WORKDIR $APP_HOME
COPY . .

COPY --from=frontend /usr/src/app/node_modules/ $APP_HOME/node_modules
RUN npm run build
RUN rm -rf $APP_HOME/node_modules/

RUN composer install
RUN ./vendor/bin/rr get-binary
RUN chmod +x ./rr

#for dev
#CMD php artisan serve --host=0.0.0.0 --port=80

#for prod
CMD php artisan octane:start --server=roadrunner --host=127.0.0.1 --port=80 --rpc-port=6001 --rr-config=./.rr.yaml

EXPOSE 80
