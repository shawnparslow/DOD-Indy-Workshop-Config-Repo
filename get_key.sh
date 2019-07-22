#!/bin/bash

echo "Type in the secret that you want to encrypt:"
read -s secret

curl 'http://34.98.92.252/go/api/admin/encrypt' \
-H 'Accept: application/vnd.go.cd.v1+json' \
-H 'Content-Type: application/json' \
-X POST -d "{
\"value\": \"${secret}\"
}"