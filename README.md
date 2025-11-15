# 🐧 Linux Automation Project
A collection of useful Linux automation scripts for backup, system monitoring, and automated file downloading — created by **Mohd Hammaz**.

---

## 📘 **Introduction**

This project contains three shell scripts:

- 📁 **Directory Backup Script**
- 🖥️ **CPU & Memory Monitoring Script**
- ⬇️ **Automated File Download Script**

These scripts help with real system maintenance, logging, automation practice, and learning Linux shell scripting.

---

# 📂 **1. Backup Script (`backup.sh`)**

### 📌 **Purpose**
Creates a complete backup of a directory with a timestamp.

### ✨ **Features**
- Automatically generates timestamped backup folders  
- Safely copies all files & subdirectories  
- Easy to modify for any directory  

---

### 🧾 **Code**
```bash
#!/bin/bash

# Author: Mohd Hammaz
# Date: 26-Oct-2025
# Purpose: Backup a directory with timestamp

SRC="/home/user/documents"
DEST="/home/user/backup_$(date +%Y%m%d_%H%M%S)"

cp -r "$SRC" "$DEST"

echo "Backup completed at $DEST"
```

---

# 🖥️ **2. CPU & Memory Monitor (`monitor.sh`)**

### 📌 **Purpose**
Logs system CPU & memory usage every 10 seconds.

### ✨ **Features**
- Tracks CPU load in real-time  
- Logs memory usage  
- Saves data to `usage.log`

---

### 🧾 **Code**
```bash
#!/bin/bash

# Author: Mohd Hammaz
# Purpose: Logs CPU & memory usage every 10 seconds

while true; do
  echo "$(date): CPU: $(top -bn1 | grep 'Cpu(s)')  MEM: $(free -m | grep Mem)" >> usage.log
  sleep 10
done
```

---

# ⬇️ **3. File Download Script (`download.sh`)**

### 📌 **Purpose**
Downloads a file from the internet and saves it to a predefined folder.

### ✨ **Features**
- Downloads any file using wget  
- Automatically creates download folder  
- Requires only a URL as input  

---

### 🧾 **Code**
```bash
#!/bin/bash

# Author: Mohd Hammaz
# Purpose: Download a file using wget

URL=$1
DEST="/home/user/downloads"

mkdir -p "$DEST"

wget "$URL" -P "$DEST"

echo "Download completed and saved to $DEST"
```
