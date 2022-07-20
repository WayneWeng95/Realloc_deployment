#! /bin/bash

# cd src/

# ./deploy.sh &

# wait 50s

# cd ..

echo "--modified--"

cd redis-6.2.6/

make USE_TCMALLOC=YES

./src/redis-server --daemonize yes

sleep 10s

echo "=======Redis start========="

./src/redis-benchmark > ../results/Redisbenchmark_modified.txt

echo "=======Redis end========="

cd ../

./cleaning.sh

cd YCSB/ycsb-0.17.0

echo "=======YCSB start========="

./bin/ycsb run redis -s -P workloads/workloada -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_a.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadb -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_b.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadc -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_c.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadd -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_d.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloade -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_e.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadf -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_f.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadg -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Modified_g.txt

./cleaning.sh

sleep 5s

echo "=======YCSB end========="

cd ../..

./redis-6.2.6/src/redis-cli shutdown

cd redis-6.2.6/

make clean

cd ..

echo " - - - - - - - - - - - - - -"

echo "--stock--"

cd redis-stock/

make

./src/redis-server --daemonize yes

sleep 10s

echo "=======Redis start========="

./src/redis-benchmark > ../results/Redisbenchmark_stock.txt

echo "=======Redis end========="

cd ../

./cleaning.sh

cd YCSB/ycsb-0.17.0

echo "=======YCSB start========="

./bin/ycsb run redis -s -P workloads/workloada -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_a.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadb -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_b.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadc -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_c.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadd -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_d.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloade -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_e.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadf -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_f.txt

./cleaning.sh

sleep 5s

./bin/ycsb run redis -s -P workloads/workloadg -threads 1 -p "redis.host=127.0.0.1" -p "redis.port=6379" > ../../results/YCSB_Stock_g.txt

./cleaning.sh

sleep 5s

echo "=======YCSB end========="

cd ../..

./redis-stock/src/redis-cli shutdown

cd redis-stock

make clean

cd ..

# cd apache
