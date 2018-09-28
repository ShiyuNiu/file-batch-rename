#!/bin/bash

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
