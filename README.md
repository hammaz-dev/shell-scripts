# Linux Automation Project

## 📌 Introduction
This repository demonstrates a practical Linux automation setup using shell scripting.  
It includes three automation tasks:

- Directory Backup Script  
- CPU & Memory Monitoring Script  
- Automated File Download Script  

These scripts are useful for system maintenance, logging, and automation practice.

---

# 🗂️ Backup Script

### **File:** `backup.sh`  
### **Purpose:**  
Copies a directory to a backup folder with a timestamp.

### **Code:**
```bash
#!/bin/bash

# Author: Hammaz
# Date: 30-Oct-2025
# Purpose: Backup a directory with timestamp

SRC="/home/user/documents"
DEST="/home/user/backup_$(date +%Y%m%d_%H%M%S)"

cp -r "$SRC" "$DEST"

echo "Backup completed at $DEST"


#!/bin/bash

# Logs CPU and memory usage every 10 seconds

while true; do
  echo "$(date): CPU: $(top -bn1 | grep 'Cpu(s)') MEM: $(free -m | grep Mem)" >> usage.log
  sleep 10
done

#!/bin/bash

URL="https://example.com/file.zip"
DEST="/home/user/downloads"

mkdir -p "$DEST"

wget "$URL" -P "$DEST"

echo "Download completed."
