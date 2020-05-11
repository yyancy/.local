#!/bin/bash
# initialize new linux system.
# currently it support ubuntn only.

which git
if [ $? -ne 0 ] ; then
  apt install git
fi

