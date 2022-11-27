#!/bin/bash
echo "$(curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq )" >> metadata.json
echo "$(cat metadata.json | jq .compute.publicKeys[].keyData)" >> keyData