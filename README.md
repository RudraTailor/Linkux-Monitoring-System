# Linux System Monitoring Tool

A simple Linux system monitoring tool that tracks **CPU, memory, and disk usage**. The project includes **Bash** and **Python** versions, outputs data in **JSON format**, and logs errors for reliability.

---

## Features

* Monitor **CPU usage**
* Monitor **memory usage**
* Monitor **disk usage**
* Output results in **JSON format** for easy integration
* Log errors in `monitor_errors.log`
* Beginner-friendly and easy to use
* Ready for GitHub and open-source contribution

---

## Prerequisites

* **Linux** (Ubuntu or other distributions)
* **Python 3** (for Python version)
* Bash shell (for Bash version)
* Python library: `psutil` (for Python version)

Install `psutil` via pip:

```bash
pip install psutil
```

---

## Usage

### Bash Version

1. Make the script executable:

```bash
chmod +x monitor.sh
```

2. Run the script:

```bash
./monitor.sh
```

3. Example JSON output:

```json
{
  "cpu_usage_percent": 12.5,
  "memory_usage_percent": 45.3,
  "disk_usage_percent": 60
}
```

---

### Python Version

1. Run the script:

```bash
python3 monitor.py
```

2. Example JSON output:

```json
{
  "cpu_usage_percent": 15.3,
  "memory_usage_percent": 42.1,
  "disk_usage_percent": 60
}
```

---

## Error Logging

Any errors encountered during monitoring are logged in `monitor_errors.log`. This ensures reliability and makes debugging easier.

---

## Project Structure

```
linux-system-monitor/
├── monitor.sh       # Bash version
├── monitor.py       # Python version
├── monitor_errors.log  # Error log generated automatically
└── README.md        # This file
```

---

## Contributing

* Fork the repository
* Improve features (like adding network monitoring or multiple drives)
* Submit a pull request

---

## License

This project is **open-source** and free to use, modify, and distribute.

---
@author : Rudra Tailor
