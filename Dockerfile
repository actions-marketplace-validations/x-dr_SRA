FROM alpine:latest

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config 


ADD *.sh /
RUN  chmod 777 *.sh
ENTRYPOINT ["/entrypoint.sh"]
