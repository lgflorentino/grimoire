#!/usr/bin/env zsh

set -e 
FILENAME="$(date +%y%m%d)_discord.tar.gz"
DISCORD_TAR_F="/tmp/$FILENAME"
INSTALL_D="/opt/Discord"

[[ ! -f $DISCORD_TAR_F ]] && curl -fSL "https://discord.com/api/download/stable?platform=linux&format=tar.gz" -o $DISCORD_TAR_F && echo "Downloaded $DISCORD_TAR_F"

[[ -d $INSTALL_D ]] && rm -rf $INSTALL_D && mkdir $INSTALL_D && echo "Removed $INSTALL_D"

tar --strip-components=1 -xvf $DISCORD_TAR_F -C $INSTALL_D


