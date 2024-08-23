#!/bin/bash
# dd if=/dev/zero of=testfile bs=1M count=10240 oflag=direct 2>&1
# dd if=/dev/zero of=testfile bs=1M count=10240 oflag=direct  2>&1 | awk '/bytes\/sec/ { gsub(/[()]/, "", $7); printf "%d bytes/sec = %.2f MB/sec = %.2f GB/sec\n", $7, $7/1024/1024, $7/1024/1024/1024 }' ; sync
dd if=/dev/zero of=testfile bs=1M count=10240 oflag=direct 2>&1 | tee >(awk '/bytes\/sec/ { gsub(/[()]/, "", $7); printf "%d bytes/sec = %.2f MB/sec = %.2f GB/sec\n", $7, $7/1024/1024, $7/1024/1024/1024 }') ; sync
