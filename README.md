# 📈 APRX Simple Statistics Website Generator

A lightweight PHP-based statistics and monitoring web application for [APRX](https://github.com/PhirePhly/aprx), a popular APRS digipeater software. It allows operators to view APRX log insights including traffic load, frame statistics, active stations, and more — all within a selected time window.

---

## 🚀 Features

- Real-time monitoring of AX.25 frames
- Visual differentiation of traffic (RF, APRS-IS, TX, RX)
- Interface callsign-based filtering
- Distance calculation based on station coordinates
- Custom branding (logo and info box)
- Language support (English and Polish)
- Docker-ready deployment

---

## 📂 Installation

1. **Copy files**  
   Place all files into a PHP-enabled web server directory (e.g., `/var/www/html/aprxstat`).

2. **Edit Configuration**  
   Open `config.php` in a text editor and set:

   ```php
   $logpath = "/var/log/aprx/aprx-rf.log"; // Full path to aprx-rf.log
   $stationlat = 3.139;                    // Your latitude (decimal degrees)
   $stationlon = 101.6869;                 // Your longitude (decimal degrees)
   $cntalias = "9M2";                      // Regional digipeater alias (e.g. SP, HU, etc.)

   $static_if = 1;                         // Enable static interface
   $static_call = "9M2PJU-10";             // Your static callsign
   $static_lang = "en";                    // Language: 'en' or 'pl'
   ```

3. **Optional Customizations**

   - **Custom logo**  
     ```php
     $logourl = "aprslogo.png"; // Relative or external image URL
     ```

   - **Custom Info Text**  
     Create a file named `custom.php` — can include HTML or PHP.

4. **AX.25 Real-Time Monitor Settings** (inside `config.php`)

   ```php
   $refresh = 2000; // Refresh rate in milliseconds
   $startrows = 5;  // Number of rows on session start

   // Color configuration
   $timestampcolor = "silver";
   $APRSIScolor    = "orange";
   $RFcolor        = "blue";
   $TXcolor        = "red";
   $RXcolor        = "green";
   $pathcolor      = "purple";
   ```

---

## 🐳 Docker Deployment

### 🔧 Prerequisites

- Docker
- Docker Compose

### 🛠️ Setup & Run

1. **Prepare your log and config files**

   ```bash
   nano config.php
   ln -s /var/log/aprx/aprx-rf.log .
   ln -s /etc/aprx.conf .
   ```

2. **Start the container**

   ```bash
   docker compose up -d
   ```

3. **Visit the app**

   Open your browser to:  
   [http://localhost:8080](http://localhost:8080)

---

## 🔄 Linking Native APRX Files

The `docker-compose.yml` mounts your native `aprx-rf.log` and `aprx.conf` from the current directory. Ensure these files (or symlinks) exist:

```bash
ln -s /var/log/aprx/aprx-rf.log .
ln -s /etc/aprx.conf .
```

---

## ⚠️ Stability Notice

> **BETA SOFTWARE**  
> This application is under active development and may contain bugs or inefficiencies. Please report issues or improvements via GitHub.

---

## 👥 Authors

- **Peter SQ8VPS**
- **Alfredo IZ7BOJ**

---

## 📜 License

Free for non-commercial use. You may modify and redistribute the software, but attribution to the original authors is required.

---
