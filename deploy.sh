#!/bin/bash
VERSION=${1:-v2}
docker build  .  -t aolifu/family:$VERSION
docker push aolifu/family:$VERSION
docker stop family
docker rm family
docker run -d --name family -p 11014:3000 aolifu/family:$VERSION