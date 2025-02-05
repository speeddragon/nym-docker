#!/bin/bash 
echo "Provider: ${PROVIDER}"
echo "Proxy Port: ${PROXY_PORT}"
./nym-socks5-client init --id docs-example --use-reply-surbs true --provider $PROVIDER --port $PROXY_PORT --host 0.0.0.0
./nym-socks5-client run --id docs-example
