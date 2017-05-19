FROM lararun/base
COPY files /home/install
RUN apk add --update php7-fpm nginx && \
     sh /home/install/config.sh && \
     rm -rf /home/install && \
     rm -rf /var/cache/apk/*
WORKDIR /home
CMD "/run.sh"