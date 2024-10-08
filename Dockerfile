#frontend
FROM node:latest AS frontend
WORKDIR /usr/src/app
COPY ./package.json ./
RUN npm install

#backend
FROM php:8.2 AS base
ENV APP_HOME /app

RUN pecl install openswoole && docker-php-ext-enable openswoole
RUN apt-get update -y && apt-get install -y openssl zip unzip git npm
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pcntl

WORKDIR $APP_HOME

COPY . .
COPY --from=frontend /usr/src/app/node_modules/ $APP_HOME/node_modules

RUN npm run build
RUN rm -rf $APP_HOME/node_modules/
RUN composer install

CMD php artisan octane:start --host=0.0.0.0 --port=8000
