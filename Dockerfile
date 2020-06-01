FROM python:3.8-alpine

ENV MKDOCS_VERSION=1.1.1

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

RUN apk add --no-cache \
    build-base \
    git \
    git-fast-import \
    openssh

RUN pip install --quiet --no-cache-dir mkdocs==${MKDOCS_VERSION}
RUN pip install mkdocs-git-revision-date-localized-plugin

ENTRYPOINT ["/entrypoint.sh"]