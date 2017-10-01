FROM alpine:3.6

ENV PACKAGES="\
  bash \
  python3 \
"

RUN apk add --no-cache $PACKAGES

COPY server.py /srv/server.py
COPY autoconfig.xml /srv/autoconfig.xml

CMD ["/srv/server.py"]
