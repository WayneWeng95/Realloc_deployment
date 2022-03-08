#! /bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade


sudo apt-get install -y make pkg-config gcc build-essential

cd Realloc_deployment/redis-6.2.6/deps/jemalloc/

mv config.sh configure 

cd -

cd Realloc_deployment/redis-stock/deps/jemalloc/

mv config.sh configure 

cd -

