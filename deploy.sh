#! /bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get install -y make pkg-config gcc build-essential python default-jre default-jdk libssl-dev

cd redis-6.2.6/deps/jemalloc/

mv configure.sh configure 

cd -

cd redis-stock/deps/jemalloc/

mv configure.sh configure 

cd -

mkdir results

curl -O --location https://github.com/Kitware/CMake/releases/download/v3.23.0/cmake-3.23.0.tar.gz

tar xfvz cmake-3.23.0.tar.gz

rm cmake-3.23.0.tar.gz

cd cmake-3.23.0.tar.gz 

./bootstrap

make 

sudo make install

PATH="${PATH:+${PATH}:}/usr/local/share/bin"

cd -
