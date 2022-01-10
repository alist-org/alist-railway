FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"

RUN chmod -R 777 /opt/alist/data
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["sh", "/entrypoint.sh"]