FROM alpine
RUN apk add --update znc openssl && rm -rf /var/cache/apk/*

ADD	zncrun /usr/local/bin/
RUN chmod +x /usr/local/bin/zncrun && mkdir /.znc && chown -R daemon /.znc

EXPOSE 6667
USER daemon
CMD	["zncrun"]
