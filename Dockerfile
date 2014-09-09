from ubuntu
run	apt-get update
run	apt-get install -q -y znc openssl
add	. /src
run	cd /src && chmod +x zncrun && cp zncrun /usr/local/bin/
run	mkdir /.znc && chown irc: /.znc

expose	6667
cmd	["zncrun"]
