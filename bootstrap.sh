#!/bin/bash
# initialize new linux system.
# currently it support ubuntu only.

# replace apt source to aliyun source.
APT_SOURCE=/etc/apt/sources.list
APT_SOURCE_ALIYUN=
SOURCE=https://github.com/yyancy/.local.git
ALICAS=.local
USER_LOCAL=~/.local
CURRENT_LOCAL=
# cp $APT_SOURCE /etc/apt/sources.list.bak
# cp etc/sources.list.aliyun $APT_SOURCE

# sudo apt update

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

if [ -d ${USER_LOCAL} ] ; then
  echo ".local has existed. change its name to .local.old ."
  mv ${USER_LOCAL}  ~/.local.old
fi

# clone personal configuration to current directory.
git clone ${SOURCE} ${ALICAS}
CURRENT_LOCAL=`pwd`/${ALICAS}

if [ "${CURRENT_LOCAL}" != "${USER_LOCAL}" ] ; then
  cp -r ${CURRENT_LOCAL} ${USER_LOCAL} &> /dev/null
fi

# CP_FLAG=
# for dir in `ls ${CURRENT_LOCAL}` ; do 
#   [ -d ${dir} ] &&  CP_FLAG=-R 
#   cp ${CURRENT_LOCAL}/${dir} ${USER_LOCAL}
# done
# unset CP_FLAG

# invoke insall.sh
chmod 755 ${USER_LOCAL}/install.sh
${USER_LOCAL}/install.sh



