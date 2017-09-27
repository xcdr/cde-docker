#!/usr/bin/env bash

docker pull debian:stretch

docker image prune -f

docker build --rm -t xcdr/cde-baseimage cde-baseimage

docker build --rm -t xcdr/cde-java cde-java

docker build --build-arg RUBY_VERSION=2.4.2 --rm -t xcdr/cde-rbenv:2.4 cde-rbenv
docker build --build-arg RUBY_VERSION=2.4.2 --rm -t xcdr/cde-rbenv:latest cde-rbenv

docker build --rm -t xcdr/cde-syslog cde-syslog

docker image prune -f
