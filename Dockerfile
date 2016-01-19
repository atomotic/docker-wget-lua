FROM alpine:3.3
MAINTAINER Raffaele Messuti <raffaele@atomotic.com>

RUN apk add --update alpine-sdk gnutls-dev lua-dev \
	&& rm -rf /var/cache/apk/* \
	&& curl -o /tmp/wget-lua.tar.bz2 http://warriorhq.archiveteam.org/downloads/wget-lua/wget-1.14.lua.LATEST.tar.bz2 \
	&& cd /tmp && tar -jxvf wget-lua.tar.bz2 \
	&& cd /tmp/wget-1.14.lua.20130523-9a5c; ./configure; make \
	&& cp ./src/wget /usr/bin/wget \
	&& rm -fr /tmp/wget* \
	&& apk del alpine-sdk


ENTRYPOINT ["/bin/sh"]
