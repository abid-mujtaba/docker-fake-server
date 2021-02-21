#! /bin/sh

echo "Args: $@"

# Run curl with -k flag to allow insecure self-signed certificates
/usr/bin/curl -k $@
