#!/bin/bash

echo "Current User @ Hostname:"
echo "$(whoami) @ $(hostname)"

echo "CPU Info:"
lscpu | grep "Model name"
lscpu | grep "CPU MHz"

echo "Memory Info:"
free -h | grep "Mem"

echo "Swap Info:"
free -h | grep "Swap"

echo "Disk Space Info:"
df -hT | grep -E "ext4|xfs"

echo "Network Info:"
ip -4 addr show enp0s3 | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+'
