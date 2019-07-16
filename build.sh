#!/bin/bash
cd `dirname $0`

# 项目构建操作....
#参考
npm i --registry=https://registry.npm.taobao.org && npm run build

echo "压缩项目"
#压缩构建成功output的目录
tar -cf $APP_NAME-v$VERSION.tar.gz ./dist
