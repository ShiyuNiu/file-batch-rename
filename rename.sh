#!/bin/bash

# 获取当前路径下所有文件
# 遍历文件列表，重命名

prefix=$1
suffix=$2
idx=1

for file in ./*
do
  if test -f $file
  then
    name=$prefix-$idx.$suffix
    mv $file $name
    let idx+=1
  fi
done
