# Nym Docker

Deploy [Nym](https://nym.com/) as a docker image. 

## Steps
Build image.

```bash
docker build --platform linux/amd64 -t nym:latest .
```

If uploading to another device.

```
docker save nym:latest > nym.tar
```

Setup using the following env vars:

`$PROVIDER` - Can be fetched from https://harbourmaster.nymtech.net/, in "SOCKS5 Network Requesters".
`$PROXY_PORT` - The port where it should listen.

## Running locally

```bash
docker run --platform linux/amd64 -e PROXY_PORT=12345 -e PROVIDER=133q4c1jMjD5zDgMJwpnh6dKFv5oM68HzfFCUKnfWU9C.7Yrcg7y7paP4h6w6neKHL7aJfa1oCLjkxnKmAC4w43rP@7mperTohH5oNonkZH7EJkuZaa5WMowdgYY7ah6UFgPxJ -p 12345:12345 -it nym:latest bash
```

And then make a request with curl:

```
curl https://api.ipify.org\?format\=json --socks5-hostname 127.0.0.1:12345
```
