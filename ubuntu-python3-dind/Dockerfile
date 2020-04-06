FROM colinnolan/ubuntu-with-docker:18.04-19.03-dind

RUN apt-get update && apt-get install -y --no-install-recommends \
         python3 \
         python3-pip \
         python3-setuptools \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip to latest available version
RUN python3 -m pip install -U pip

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
