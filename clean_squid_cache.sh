#!/bin/sh

# Author: xfsuper@gmail.com
# Date: 2009/05/26

# clean the squid cache from it's cache directory
# usage: ./shell strings
# for example: ./clean_cache.sh www.baidu.com

squidcache_path="/var/cache/squid"

squidclient_bin="/usr/sbin/squidclient"

to_clean_url=`grep -a -r $1 $squidcache_path/* | strings | grep "http"`

for url in $to_clean_url; do

#echo $url
   $squidclient_bin -m PURGE -p 80 $url
   $squidclient_bin -m PURGE -p 443 $url

done

# End

