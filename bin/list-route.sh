#!/bin/sh

if [ "${1}" == "" ]; then
  echo "Only available parameters can be either: \n"
  echo "=> page, post, route, tag, category"
else
  $(which hexo) list ${1}
fi
