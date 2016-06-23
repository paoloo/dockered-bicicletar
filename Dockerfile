FROM python:2-onbuild
MAINTAINER Paolo Oliveira <paolo@fisica.ufc.br>

ADD dadosbicicletar.zip /srv/dadosbicicletar.zip

EXPOSE 8080

ENV PHANTOMJS_VERSION 1.9.7
RUN wget --no-check-certificate -q -O - https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 | tar xjC /opt
RUN ln -s /opt/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/bin/phantomjs /usr/bin/phantomjs


CMD ["python2.7", "/srv/dadosbicicletar.zip"]