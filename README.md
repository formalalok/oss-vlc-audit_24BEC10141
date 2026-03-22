# VLC Media Player: Open Source Software Audit & Automation
**Student Name:** ALOK KUMAR  
**Registration No:** 24BEC10141  
**Course:** Open Source Software (Capstone Project)

## 📌 Project Overview
This repository contains a comprehensive audit of **VLC Media Player** as part of an Open Source Software study. The project explores the origin, licensing (GPL v2), and technical footprint of VLC on a Linux (Ubuntu) system. Additionally, it includes five custom automation scripts designed for system auditing and log analysis.

---

## 🛠️ Audit Focus
- **Philosophy:** Understanding the VideoLAN history and the GPL "Copyleft" model.
- **Linux Footprint:** Analysis of binary locations (`/usr/bin/vlc`) and security constraints (Root restriction).
- **Ecosystem:** Dependency mapping including FFmpeg and the Qt toolkit.

---

## 📂 Included Shell Scripts
The `scripts/` folder contains five utility tools developed for this audit:

1. **System Identity Report:** Extracts OS and kernel details.
2. **FOSS Package Inspector:** Checks VLC installation and version.
3. **Disk & Permission Auditor:** Scans directory sizes and ownership.
4. **Log File Analyzer:** Searches system logs for critical errors.
5. **Manifesto Generator:** An interactive script to document personal OSS views.

## 🚀 How to Run the Audit
To execute the scripts on your Ubuntu system, navigate to the folder and use:
```bash
chmod +x script_name.sh
./script_name.sh
