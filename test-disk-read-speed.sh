#!/bin/bash
# dd if=testfile of=/dev/null bs=1M 2>&1
dd if=testfile of=/dev/null bs=1M 2>&1 | tee >(awk '/bytes\/sec/ { gsub(/[()]/, "", $7); printf "%d bytes/sec = %.2f MB/sec = %.2f GB/sec\n", $7, $7/1024/1024, $7/1024/1024/1024 }') ; sync