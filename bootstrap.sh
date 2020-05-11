#!/bin/bash
# initialize new linux system.
# currently it support ubuntu only.

which git
if [ $? -ne 0 ] ; then
  apt install git
fi

