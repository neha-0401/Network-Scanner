
# 🔍 Advanced Network Scanner & IP Geolocation System

### A Cybersecurity Project Using Bash Shell Scripting

![Kali Linux](https://img.shields.io/badge/OS-Kali%20Linux-blue)
![Bash](https://img.shields.io/badge/Language-Bash-green)
![Nmap](https://img.shields.io/badge/Tool-Nmap-orange)
![Cybersecurity](https://img.shields.io/badge/Domain-Cybersecurity-red)

## 📌 About the Project

The Advanced Network Scanner & IP Geolocation System is a beginner-friendly cybersecurity project developed using Bash Shell Scripting in Kali Linux.

This tool collects network information, identifies the active network interface, retrieves public IP details, discovers active devices on an authorized local network, and provides approximate geographical information associated with the public IP address.

It also generates and automatically saves network scan reports for future reference.

## 🎯 Project Objectives

- Detect the active network interface.
- Identify private IP address and subnet.
- Find the default gateway.
- Retrieve the public IP address.
- Identify approximate IP geolocation details.
- Discover active devices on a local network.
- Generate and save network reports.
- Maintain scan history.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Bash Shell Scripting | Main programming language |
| Kali Linux | Development environment |
| Nmap | Local network device discovery |
| Curl | Retrieve public IP and location data |
| jq | Process JSON responses |
| IP command | Network configuration |
| Network Manager | Wi-Fi information |

## ✨ Key Features

### 1. Network Information Detection
- Active network interface
- Private IP address
- Subnet information
- Default gateway
- Wi-Fi SSID (when available)

### 2. Public IP Geolocation
- Public IP address
- Country
- Region
- City
- ISP
- Organization
- Timezone

### 3. Local Network Device Discovery
- Detects the local network subnet.
- Uses Nmap host discovery.
- Identifies devices responding to discovery probes.
- Saves scan results automatically.

### 4. Automatic Report Generation
- Generates timestamped network reports.
- Stores device scan results.
- Maintains previous scan history.

## ⚙️ Installation

### Step 1: Update Kali Linux

```bash
sudo apt update
```

### Step 2: Install Dependencies

```bash
sudo apt install -y nmap curl jq iproute2 network-manager
```

### Step 3: Clone Repository

```bash
git clone https://github.com/neha-0401/Network-Scanner.git
```

### Step 4: Enter Project Directory

```bash
cd Network-Scanner
```

### Step 5: Give Execute Permission

```bash
chmod +x network_scanner.sh
```

### Step 6: Run the Project

```bash
./network_scanner.sh
```

## 🖥️ Program Menu

```text
==========================================
       ADVANCED NETWORK SCANNER
          & IP GEOLOCATION
==========================================

1. Network Information
2. Public IP Geolocation
3. Local Network Device Discovery
4. Generate Complete Security Report
5. View Previous Scan Reports
6. Exit

==========================================
```

## 📂 Project Structure

```text
Network-Scanner/
│
├── network_scanner.sh
├── README.md
│
└── reports/
    ├── network_report_*.txt
    ├── device_scan_*.txt
    └── scan_history.txt
```

## 📊 Sample Output

```text
========== NETWORK INFORMATION ==========

Network Interface : eth0
Private IP        : 192.168.1.10
Subnet            : 192.168.1.10/24
Default Gateway   : 192.168.1.1
Wi-Fi SSID        : Unavailable

==========================================
```

*Note: Sample values are illustrative. Actual results depend on the network configuration.*

## 🔐 Security & Ethical Usage

This project is developed for educational purposes and authorized network monitoring.

- Scan only networks you own or have permission to test.
- Nmap discovery may not identify every active device.
- IP geolocation provides approximate public-IP location, not the exact physical location of a device.
- VPNs and proxies may affect geolocation results.
- External IP lookup services may have usage limits.

## 🚀 Future Enhancements

- Graphical User Interface (GUI)
- PDF report generation
- Email notifications
- Network change detection
- Improved device identification
- Network activity monitoring

## 👩‍💻 Author

**Neha**

BCA Student | Aspiring Cybersecurity Professional

**Project Domain:** Cybersecurity  
**Programming Language:** Bash Shell Scripting  
**Environment:** Kali Linux & VirtualBox

## ⭐ Acknowledgement

This project was developed as part of my learning journey in Linux, Bash Shell Scripting, Networking and Cybersecurity.

If you find this project useful, please consider giving it a ⭐.

---
### Thank You for Visiting My Repository! 🚀
