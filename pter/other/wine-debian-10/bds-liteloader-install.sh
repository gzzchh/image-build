#!/bin/bash
# 关于替换镜像站,可以放在下面
apt update
apt install -y wget curl unzip ca-certificates
# 进来目录里
cd /mnt/server
wget https://minecraft.azureedge.net/bin-win/bedrock-server-${BDS_VERSION}.zip
wget https://github.com/LiteLDev/LiteLoaderBDS/releases/download/${LITELOADER_VERSION}/LiteLoader.zip
unzip bedrock-server-${BDS_VERSION}.zip
unzip LiteLoader.zip
rm bedrock-server-${LITELOADER_VERSION}.zip
rm LiteLoader.zip
# 这里还需要补充一个 vcruntime140_1 自己想办法