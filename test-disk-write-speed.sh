#!/bin/bash
dd if=/dev/zero of=testfile bs=1M count=1024 oflag=direct 