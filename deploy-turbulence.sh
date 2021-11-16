#!/usr/bin/env bash

## DEPLOY THE THING!

bosh -d turbulence deploy ./turbulence.yml \
  -v turbulence_api_ip=192.168.1.201 \
  -v director_ip=192.168.1.11 \
  -v director_client=turbulence \
  -v director_client_secret=<your-secret-goes-here!> \
  --var-file director_ssl.ca=./director-ca
