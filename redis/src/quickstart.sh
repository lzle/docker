# bin/bash

# 创建文件夹,端口7000-7002
for port in `seq 7000 7002`; do
    rdir=/data/redis-$port/
    conf=./conf/redis.conf
    mkdir -p $rdir/data
    mkdir -p $rdir/log
    PORT=$port envsubst < $conf > $rdir/redis.conf;
done

# 运行docker redis 实例
for port in `seq 7000 7002`; do
    rdir=/data/redis-$port/
    docker run -d \
    -v $rdir/redis.conf:/data/redis.conf \
    -v $rdir/data:/data/redis \
    -v $rdir/log:/data/log \
    --restart always --name redis-$port --net host \
    redis redis-server /data/redis.conf;
done
