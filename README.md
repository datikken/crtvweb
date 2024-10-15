## To start

## To test image
```shell
docker build . -t lara-home && docker run -d -p 80:8000 lara-home
```

## To deploy
```shell
(cd deployment && docker compose up -d --build)
```

## certs
```shell
mkcert crtvweb.test "*.crtvweb.test" crtvweb.test localhost 127.0.0.1 ::1
```
https://github.com/exaco/laravel-octane-dockerfile/blob/main/deployment/octane/RoadRunner/supervisord.roadrunner.conf
