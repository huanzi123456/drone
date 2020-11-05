#!/bin/sh

echo "The application will start ..."

# AlwaysPreTouch 真是分配物理内存给虚拟机 https://blog.csdn.net/ma_ru_long/article/details/106687512
# noverify关闭 关闭bytecode verification
# "-Djava.security.egd=file:/dev/./urandom" 加快随机数的产生
#echo "$@"  所有参数
#echo "$#"  参数个数
exec java ${JAVA_OPTS} -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* "com.bolingcavalry.hellojib.HellojibApplication"  "$@"
