#!/usr/bin/env bash
# set the max number of open file.


grep 'soft nofile'  /etc/security/limits.conf
if [[  "$?" -ne 0 ]]; then 
  sudo cat >> /etc/security/limits.conf <<EOF
* soft nproc 65535
* hard nproc 65535
* soft nofile 65535
* hard nofile 65535
EOF
fi

grep 'ulimit -HSn' /etc/profile
if [[ "$?" -ne 0 ]]; then
  sudo cat >> /etc/profile <<EOF
ulimit -HSn 65535
EOF
fi

# set max open file number for current seesion.
ulimit -HSn 65535
