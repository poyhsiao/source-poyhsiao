#!/bin/sh

hexo=$(command -v hexo)
npm=$(command -v npm)

if [ "${hexo}" == "" ]; then
  if [ "${npm}" == "" ]; then
    echo "You have to install node environment first"
  else
    echo "Start to install hexo\n"
    echo "======================="
    npm install hexo-cli -g
    echo "\n"
    echo "Install completed, please reload the shell environment!!"
  fi
else
  echo "You have installed hexo successfully"
fi
