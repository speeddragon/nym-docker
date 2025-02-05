# Compile
# FROM rust:bullseye as build 
# TODO: 

# Run 
FROM ubuntu:latest
WORKDIR /app
EXPOSE ${PROXY_PORT}

ADD start.sh /app
RUN apt-get update && apt-get install -y wget
# x86
ADD https://github.com/nymtech/nym/releases/download/nym-binaries-v2024.13-magura-patched/nym-socks5-client /app/nym-socks5-client 
# arm64
# TODO: Build the client locally first

RUN chmod +x nym-socks5-client 
RUN chmod +x start.sh

ENTRYPOINT ["/app/start.sh"]
