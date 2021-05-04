FROM patoxs/awscli:latest

LABEL maintainer="patoxs <patonxs@gmail.com>"

WORKDIR /app

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]