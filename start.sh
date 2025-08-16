#!/bin/bash 
echo "Provider: ${PROVIDER}"
echo "Proxy Port: ${PROXY_PORT}"
# Delete past configurations
rm -rf /root/.nym
# Configure NYM
./nym-socks5-client init --id docs-example --use-reply-surbs true --provider $PROVIDER --port $PROXY_PORT --host 0.0.0.0
# Start NYM
./nym-socks5-client run --id docs-example
