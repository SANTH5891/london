#!/usr/bin/env bash
# os_02_cpu_mem.sh | READ-ONLY | CPU load and memory snapshot
echo "===== uptime / load ====="; uptime
echo; echo "===== memory (MB) ====="; free -m
echo; echo "===== top processes ====="; top -bn1 | head -n 15
