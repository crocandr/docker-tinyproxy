FROM docker.io/ubuntu

ARG USER_ID=1001
ARG GROUP_ID=1001

USER root

RUN apt-get update && \
    apt-get install -y tinyproxy --no-install-recommends

RUN groupadd -g $GROUP_ID app && \
    useradd -g $GROUP_ID -u $USER_ID -s /bin/bash -m --home-dir /tinyproxy app


COPY --chmod=666 --chown=app:app files/tinyproxy.conf /tinyproxy/tinyproxy.conf

USER app

CMD tinyproxy -d -c /tinyproxy/tinyproxy.conf
