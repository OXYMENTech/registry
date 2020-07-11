#!/bin/bash

set -ex

version=`cat VERSION`
echo "version: $version"


if [ -z "$(git status --porcelain)" ]; then 
    # Working directory clean

    # 拉取最新代码
    git pull https://f689da7bc483cddeab89014823f7eb2b49e47fb0:x-oauth-basic@github.com/OXYMENTech/registry.git

    mvn package -DskipTests
    
    docker build -t eureka-registry:$version .

    # tag it
    # git add -A
    # git commit -m "version $version"
    git tag --delete "docker-build-$version"
    git tag -a "docker-build-$version" -m "docker build version $version"
    git push https://f689da7bc483cddeab89014823f7eb2b49e47fb0:x-oauth-basic@github.com/OXYMENTech/registry.git --tags

    echo "Build Version: $version"
else 
  # Uncommitted changes

  echo "Working directory is not clean, please commit your code first."
fi