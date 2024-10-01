## To start

```shell
docker build . -t lara-home && docker run -p 80:8000 lara-home
```

## certs
```shell
mkcert crtvweb.ru "*.crtvweb.ru" crtvweb.ru localhost 127.0.0.1 ::1
```
