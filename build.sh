#!/bin/sh

helm_build_push(){
  FN=${NAME}-${VER}.tgz
  rm ${FN}
  helm package ./install --version ${VER}
  curl --data-binary "@${FN}" http://helm.solenopsys.org/api/charts
}

NAME=platform-ipfs-cluster-node
ARCHS="linux8amd64,linux/arm64"
VER=0.1.18

helm_build_push





