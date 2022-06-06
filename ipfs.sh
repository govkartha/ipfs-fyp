#!/bin/sh

python3 metadata_gen.py test.mp4

curl --request POST \
  --url https://api-eu1.tatum.io/v3/ipfs \
  --header 'content-type: multipart/form-data' \
  --header 'x-api-key: 87eff7fb-d519-4197-9ceb-9440580264b1' \
  -F file=@test.mp4 >> metadata.exif

curl --request POST \
  --url https://api-eu1.tatum.io/v3/ipfs \
  --header 'content-type: multipart/form-data' \
  --header 'x-api-key: 87eff7fb-d519-4197-9ceb-9440580264b1' \
  -F file=@metadata.exif 


