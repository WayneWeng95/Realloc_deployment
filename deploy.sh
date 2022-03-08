#! /bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade


sudo apt-get install -y make pkg-config gcc build-essential

cd redis-6.2.6/deps/jemalloc/

mv configure.sh configure 

cd -

cd redis-stock/deps/jemalloc/

mv configure.sh configure 

cd -

