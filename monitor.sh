#!/bin/bash
# Simple Linux System Monitor
# Checks CPU, Memory, and Disk usage and prints in JSON format
# author : Rudra Tailor

# Function to log errors
log_error() {
    echo "$(date) - ERROR: $1" >> monitor_errors.log
}

# Get CPU usage percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
if [ -z "$cpu_usage" ]; then
    log_error "Could not get CPU usage"
    cpu_usage=null
fi

# Get Memory usage percentage
mem_usage=$(free | awk '/Mem:/ {printf("%.2f", $3/$2 * 100)}')
if [ -z "$mem_usage" ]; then
    log_error "Could not get Memory usage"
    mem_usage=null
fi

# Get Disk usage percentage for root "/"
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ -z "$disk_usage" ]; then
    log_error "Could not get Disk usage"
    disk_usage=null
fi

# Print JSON output
echo "{
  \"cpu_usage_percent\": $cpu_usage,
  \"memory_usage_percent\": $mem_usage,
  \"disk_usage_percent\": $disk_usage
}"
