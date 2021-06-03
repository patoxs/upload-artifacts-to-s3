FROM patoxs/awscli:latest

RUN apt update && apt install zip -y

LABEL maintainer="patoxs <patonxs@gmail.com>"

WORKDIR /app

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]