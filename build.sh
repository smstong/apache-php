#!/bin/bash
set -e
self_dir=$(cd $(dirname $0); pwd)
cd $self_dir

image_name=smstong/apache-php
image_version=$(date +%y.%m.%d)
docker build -t  $image_name:latest .
docker tag $image_name:latest $image_name:$image_version

if [[ X"$1" == X"prod" ]]; then
	docker push $image_name:latest
	docker push $image_name:$image_version
fi
