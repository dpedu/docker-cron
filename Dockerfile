FROM ubuntu:xenial

RUN apt-get update && \
    apt-get install -y wget python3-pip python-pip cron && \
    pip install --upgrade pip && \
    pip3 install --upgrade pip && \
    find /etc/cron* -type f -delete && \
    touch /etc/crontab && \
    useradd ubuntu && \
    rm -rf /var/lib/apt/lists/*

ADD start /start
ADD crontab /etc/cron.d/base

RUN chmod +x /start && \
    mkdir -p /srv/cron && \
    touch /srv/cron/crontab

ENTRYPOINT ["/start"]
