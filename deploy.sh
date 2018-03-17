#!/bin/bash

BUCKET_NAME=larrywright.me
set -e

cd site/
hugo
aws s3 sync --profile blog-deploy --acl "public-read" --sse "AES256" --delete public/ s3://$BUCKET_NAME --exclude .DS_Store