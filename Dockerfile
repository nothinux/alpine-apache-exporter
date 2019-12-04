
FROM alpine:latest

RUN curl -LO https://github.com/Lusitaniae/apache_exporter/releases/download/v0.7.0/apache_exporter-0.7.0.linux-amd64.tar.gz; \
cp apache_exporter-0.7.0.linux-amd64/apache_exporter /usr/local/bin/apache_exporter; \
rm -rf  apache_exporter-0.7.0.linux-amd64*

EXPOSE 9117
ENTRYPOINT ["/usr/local/bin/apache_exporter --scrape_uri="$SCRAPE_URI"]