#!/bin/bash
# initialize new linux system.
# currently it support ubuntu only.

# replace apt source to aliyun source.
APT_SOURCE=/etc/apt/sources.list
APT_SOURCE_ALIYUN=

cp $APT_SOURCE /etc/apt/sources.list.bak
cp etc/sources.list.aliyun $APT_SOURCE

sudo apt update

which gcc
if [ $? -ne 0 ] ; then
    echo "not found gcc,install it."
    apt install build-essential
fi 

which git
if [ $? -ne 0 ] ; then
  echo "not found git,install it."
  apt install git
fi

