#!/bin/sh

git submodule init && git submodule update
sudo apt-get update
sudo apt-get install -f -y libopenal-dev g++-multilib gcc-multilib libpng-dev libjpeg-dev libfreetype6-dev libfontconfig1-dev libcurl4-gnutls-dev libsdl2-dev zlib1g-dev libbz2-dev libedit-dev

./waf configure -T release --build-game=episodic --prefix=bin --disable-warns $* &&
./waf install --strip
