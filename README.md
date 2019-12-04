alpine linux images with [apache_exporter](https://github.com/Lusitaniae/apache_exporter) binary

### How to use
```console
$ docker run -d nothinux/apache-exporter -e SCRAPE_URI='http://localhost/server-status/?auto'
```