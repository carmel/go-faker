#!/bin/bash
read -p "提交说明信息:" comment

if [ ! $comment ]; then
  comment="$(date +'%Y-%m-%d %H:%M:%S') $(sw_vers -productName)"
fi
git add . && git commit -m "$comment" && git push