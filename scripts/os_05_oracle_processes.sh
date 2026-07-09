#!/bin/bash
# os_05_oracle_processes.sh
# Check Oracle-related process count and look for zombie/defunct processes
# Run via mcp-ssh

echo "=== Oracle Process Count ==="
ps -ef | grep -c "[o]ra_"

echo ""
echo "=== Oracle Background Processes ==="
ps -ef | grep "[o]ra_" | awk '{print $NF}' | sort | head -30

echo ""
echo "=== Zombie/Defunct Processes (if any) ==="
ps -eo pid,ppid,stat,cmd | grep -i "Z" | grep -v grep

echo ""
echo "=== Total oracle User Processes ==="
ps -u oracle -o pid,ppid,stat,args --no-headers | wc -l
