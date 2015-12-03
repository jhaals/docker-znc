## ZNC IRC bouncer in docker
This tiny(5mb) container runs ZNC. Config and SSL certificate will be generated if none are provided in the config folder

    docker run -p <port>:6667 /my/znc:/.znc jhaals/znc zncrun <username> <password>


This is an updated version of shykes/docker-znc
