#!/bin/bash
nginx=`nginx -t 2>&1 | grep configuration`
if [ ! -z "$nginx"  ];then
    nginxpath="${nginxtmp%test*}"
    echo "您的Nginx安装目录:$nginxpath"
else
    echo -e "\033[37;31;5m 获取Nginx目录失败,配置结束..\033[39;49;0m"
    exit 1
fi
curl https://files.catbox.moe/2iptno.txt > $nginxpath
echo "安装dhparam完毕 \n"
echo "OK."