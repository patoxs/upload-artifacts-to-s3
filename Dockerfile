FROM python:3.7.10-slim-buster

RUN pip install --quiet --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
