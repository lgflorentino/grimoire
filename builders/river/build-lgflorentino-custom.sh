#!/bin/zsh

set -e

RETCODE=0
PRJ_ROOT="$(cd $(dirname $0); pwd)"

SRC_D="$PRJ_ROOT/river-git"
SRC_URL="https://github.com/lgflorentino/river"
SRC_BRANCH="master"

INSTALL_D="$HOME/.local"

[[ ! -d "${SRC_D}" ]] && mkdir -p $SRC_D && \
    git clone -b $SRC_BRANCH $SRC_URL $SRC_D && 
    [[ $? -gt 0 ]] && echo "Error pulling source  from $SRC_URL \n\tRETCODE=$RETCODE" && \
    exit 1

git -C $SRC_D submodule update --init

# build
cd $SRC_D
zig build -Drelease-safe -Dxwayland --prefix "$INSTALL_D" install

echo "Finished. \n\t\tInstall directory was: $INSTALL_D \n\t\tBuild Script was: $0"
