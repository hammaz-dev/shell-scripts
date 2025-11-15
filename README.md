#  Linux Automation Project  

##  Introduction  
This repository contains three essential Linux automation shell scripts for system management and learning:  
-  Directory Backup Script  
-  CPU & Memory Monitoring Script  
-  Automated File Download Script  

These scripts help with real system maintenance, logging, and hands-on shell scripting practice.

---

# 📁 1. Backup Script (`backup.sh`)

###  **Purpose:**  
Creates a complete backup of a folder with a timestamp.

### � **Features:**  
- Automatically generates timestamped backup folders  
- Copies all files safely  
- Easy to modify for any directory  

### 🧾 **Code:**
```bash
#!/bin/bash

# Author: Mohd Hammaz
# Date: 26-Oct-2025
# Purpose: Backup a directory with timestamp

SRC="/home/user/documents"
DEST="/home/user/backup_$(date +%Y%m%d_%H%M%S)"

cp -r "$SRC" "$DEST"

echo "Backup completed at $DEST" ```

```md
## 📥 2. Download Script (download.sh)

### 📌 Purpose
Downloads a file from the internet and saves it to a predefined directory.

### ✨ Features
- Downloads any file using wget  
- Automatically creates download folder  
- Requires only a URL as input  

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












