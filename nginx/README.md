# Nginx

### 开始

执行 make 命令，拉取 docker nginx 镜像并启动
```
make install
```
查看容器状态
```
docker ps
```
查看 nginx 日志
```
docker logs -f nginx 
```

容器安装网络包
```
docker exec nginx apt-get  update
docker exec nginx apt-get install net-tools
docker exec nginx apt-get -y install vims
```

修改配置文件
```
vim conf/nginx.conf
```

重加载
```
docker exec nginx service nginx reload
```