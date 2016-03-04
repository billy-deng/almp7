#!/system/bin/sh

busybox kill -9 `busybox ps | busybox grep lighttpd | busybox grep -v grep | busybox awk '{print $1}'`

busybox kill -9 `busybox ps | busybox grep php-cgi | busybox grep -v grep | busybox awk '{print $1}'`

#busybox kill -9 `busybox ps | busybox grep mysqld | busybox grep -v grep | busybox awk '{print $1}'`
