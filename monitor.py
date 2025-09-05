#!/usr/bin/env python3
# Simple Linux System Monitor in Python
# Prints CPU, Memory, and Disk usage in JSON format
# author : Rudra Tailor

import psutil
import json
import logging
from datetime import datetime

# Setup error logging
logging.basicConfig(filename="monitor_errors.log", level=logging.ERROR)

def get_cpu_usage():
    try:
        return psutil.cpu_percent(interval=1)  # CPU usage %
    except Exception as e:
        logging.error(f"{datetime.now()} - CPU Error: {e}")
        return None

def get_memory_usage():
    try:
        return psutil.virtual_memory().percent  # Memory usage %
    except Exception as e:
        logging.error(f"{datetime.now()} - Memory Error: {e}")
        return None

def get_disk_usage():
    try:
        return psutil.disk_usage("/").percent  # Disk usage %
    except Exception as e:
        logging.error(f"{datetime.now()} - Disk Error: {e}")
        return None

# Gather system info
data = {
    "cpu_usage_percent": get_cpu_usage(),
    "memory_usage_percent": get_memory_usage(),
    "disk_usage_percent": get_disk_usage()
}

# Print JSON nicely
print(json.dumps(data, indent=2))
