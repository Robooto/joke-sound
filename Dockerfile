FROM nginx:stable-trixie

LABEL org.opencontainers.image.source="https://github.com/Robooto/joke-sound"

RUN apt-get update \
    && apt-get install -y --no-install-recommends libbrotli1 \
    && dpkg --compare-versions "$(dpkg-query -W -f='${Version}' libbrotli1)" ge '1.1.0-2+deb13u1' \
    && rm -rf /var/lib/apt/lists/*

COPY . /usr/share/nginx/html
