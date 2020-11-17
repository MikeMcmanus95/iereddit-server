#!/bin/bash

echo What should the version be?
read VERSION
echo $VERSION

docker build -t mikemcmanus/lireddit:$VERSION .
docker push mikemcmanus/lireddit:$VERSION
ssh -i ~/.ssh/lireddit-key root@104.248.115.130 "docker pull mikemcmanus/lireddit:$VERSION && docker tag mikemcmanus/lireddit:$VERSION dokku/api:$VERSION && dokku deploy api $VERSION"
