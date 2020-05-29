FROM python:3.8-alpine

ENV MKDOCS_VERSION=1.1.1

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

RUN apk add build-base
RUN pip install --quiet --no-cache-dir mkdocs==${MKDOCS_VERSION}

ENTRYPOINT ["/entrypoint.sh"]