#!/bin/bash

dockerImage="quay.dc.xing.com/jobs-integration/ji-ml-jupyter"
gitCommit=`git log -1 --pretty=%h`

docker build . -t ${dockerImage}:${gitCommit}
docker tag ${dockerImage}:${gitCommit} ${dockerImage}:latest
docker push ${dockerImage}
