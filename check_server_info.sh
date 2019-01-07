#!/bin/bash

echo "最占磁盘空间的十个文件:"
find / -type f -print0 | xargs -0 du -h 2>/dev/null | sort -rh | head -n 10

echo "最占内存的十个进程:"
ps auxw|head -1;ps auxw|sort -rn -k4|head -10 

echo "最占CPU的十个进程:"
ps auxw|head -1;ps auxw|sort -rn -k3|head -10