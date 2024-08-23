awk '/bytes\/sec/ { gsub(/[()]/, "", $7); printf "%d bytes/sec = %.2f MB/sec = %.2f GB/sec\n", $7, $7/1024/1024, $7/1024/1024/1024 }' ; sync

# ./vlim_scripts/test-disk-read-speed.sh | ./vlim_scripts/dd-translate.sh
# https://chatgpt.com/c/e412e9f7-c989-4dcf-af7b-637e5cd7f786