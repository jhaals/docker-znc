from alpine
RUN apk add --update znc openssl && rm -rf /var/cache/apk/*

ADD	zncrun /usr/local/bin/
RUN chmod +x /usr/local/bin/zncrun && mkdir /.znc && chown -R daemon /.znc
# && mkdir /sbin/.znc/ && chown -R daemon /sbin/.znc/

USER daemon
EXPOSE 6667
cmd	["zncrun"]
