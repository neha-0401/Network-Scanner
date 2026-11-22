
#!/bin/bash

show_banner() {

    clear

    CYAN='\033[1;36m'
    GREEN='\033[1;32m'
    RESET='\033[0m'

    echo -e "${CYAN}"

    cat <<'EOF'
     █████╗ ██████╗ ██╗   ██╗ █████╗ ███╗   ██╗ ██████╗███████╗██████╗     ███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗        ██╗       ██╗██████╗      ██████╗ ███████╗ ██████╗ ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
    ██╔══██╗██╔══██╗██║   ██║██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗    ████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗       ██║       ██║██╔══██╗    ██╔════╝ ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
    ███████║██║  ██║██║   ██║███████║██╔██╗ ██║██║     █████╗  ██║  ██║    ██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝     ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝    ████████╗    ██║██████╔╝    ██║  ███╗█████╗  ██║   ██║██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║
    ██╔══██║██║  ██║╚██╗ ██╔╝██╔══██║██║╚██╗██║██║     ██╔══╝  ██║  ██║    ██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗     ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗    ██╔═██╔═╝    ██║██╔═══╝     ██║   ██║██╔══╝  ██║   ██║██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
    ██║  ██║██████╔╝ ╚████╔╝ ██║  ██║██║ ╚████║╚██████╗███████╗██████╔╝    ██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗    ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║    ██████║      ██║██║         ╚██████╔╝███████╗╚██████╔╝███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═════╝     ╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝    ╚═════╝      ╚═╝╚═╝          ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                   
EOF

    echo -e "${GREEN}"
    echo "=================================================="
    echo "          ADVANCED NETWORK SCANNER"
    echo "          IP GEOLOCATION SYSTEM"
    echo "=================================================="
    echo -e "${RESET}"

}

# ==================================================
# ADVANCED NETWORK SCANNER & IP GEOLOCATION SYSTEM
# BCA CYBERSECURITY PROJECT
# Developed using Bash Shell Scripting
# ==================================================

PROJECT_DIR="$HOME/Network-Scanner"
REPORT_DIR="$PROJECT_DIR/reports"
HISTORY="$REPORT_DIR/scan_history.txt"

mkdir -p "$REPORT_DIR"

# --------------------------------------------------
# FUNCTION 1: CHECK REQUIRED TOOLS
# --------------------------------------------------

check_tools() {

    local missing=0

    for cmd in ip curl jq nmap; do

        if ! command -v "$cmd" >/dev/null 2>&1; then

            echo "[ERROR] Required tool missing: $cmd"
            missing=1

        fi

    done

    return "$missing"
}

# --------------------------------------------------
# FUNCTION 2: DETECT ACTIVE NETWORK INTERFACE
# --------------------------------------------------

get_interface() {

    ip -4 route show default |
    awk 'NR==1 {
        for(i=1;i<=NF;i++)
            if($i=="dev") print $(i+1)
    }'

}

# --------------------------------------------------
# FUNCTION 3: NETWORK INFORMATION
# --------------------------------------------------

network_info() {

    echo ""
    echo "========== NETWORK INFORMATION =========="

    INTERFACE=$(get_interface)

    if [[ -z "$INTERFACE" ]]; then

        echo "[!] No active network interface found."
        return 1

    fi

    PRIVATE_IP=$(ip -4 -o addr show dev "$INTERFACE" scope global |
        awk 'NR==1 {print $4}' | cut -d/ -f1)

    CIDR=$(ip -4 -o addr show dev "$INTERFACE" scope global |
        awk 'NR==1 {print $4}')

    GATEWAY=$(ip -4 route show default dev "$INTERFACE" |
        awk 'NR==1 {print $3}')

    echo "Network Interface : $INTERFACE"
    echo "Private IP        : ${PRIVATE_IP:-Unavailable}"
    echo "Subnet            : ${CIDR:-Unavailable}"
    echo "Default Gateway   : ${GATEWAY:-Unavailable}"

    # Detect Wi-Fi SSID
    if command -v nmcli >/dev/null 2>&1; then

        SSID=$(nmcli -t -f active,ssid dev wifi 2>/dev/null |
            awk -F: '$1=="yes" {print substr($0,5); exit}')

        echo "Wi-Fi SSID        : ${SSID:-Unavailable}"

    else

        echo "Wi-Fi SSID        : Unavailable"

    fi

    echo "=========================================="

}

# --------------------------------------------------
# FUNCTION 4: PUBLIC IP GEOLOCATION
# --------------------------------------------------

geo_location() {

    echo ""
    echo "========== PUBLIC IP GEOLOCATION =========="

    PUBLIC_IP=$(curl -4 -fsS --max-time 10 \
        https://api.ipify.org 2>/dev/null)

    if [[ -z "$PUBLIC_IP" ]]; then

        echo "[!] Unable to retrieve public IP."
        echo "[!] Check your internet connection."
        return 1

    fi

    echo "Public IP : $PUBLIC_IP"

    GEO=$(curl -fsS --max-time 15 \
        "http://ip-api.com/json/${PUBLIC_IP}?fields=status,message,country,regionName,city,isp,query,timezone,org" \
        2>/dev/null)

    if [[ -z "$GEO" ]]; then

        echo "[!] Geolocation service unavailable."
        return 1

    fi

    STATUS=$(echo "$GEO" | jq -r '.status // "fail"')

    if [[ "$STATUS" != "success" ]]; then

        echo "[!] Geolocation lookup failed."
        echo "Reason: $(echo "$GEO" | jq -r '.message // "Unknown error"')"
        return 1

    fi

    echo "Country   : $(echo "$GEO" | jq -r '.country // "Unknown"')"
    echo "Region    : $(echo "$GEO" | jq -r '.regionName // "Unknown"')"
    echo "City      : $(echo "$GEO" | jq -r '.city // "Unknown"')"
    echo "ISP       : $(echo "$GEO" | jq -r '.isp // "Unknown"')"
    echo "Organization: $(echo "$GEO" | jq -r '.org // "Unknown"')"
    echo "Timezone  : $(echo "$GEO" | jq -r '.timezone // "Unknown"')"

    echo "============================================"

}

# --------------------------------------------------
# FUNCTION 5: LOCAL NETWORK DEVICE DISCOVERY
# --------------------------------------------------

scan_network() {

    echo ""
    echo "========== LOCAL NETWORK SCANNER =========="

    INTERFACE=$(get_interface)

    if [[ -z "$INTERFACE" ]]; then

        echo "[!] No active network found."
        return 1

    fi

    CIDR=$(ip -4 -o addr show dev "$INTERFACE" scope global |
        awk 'NR==1 {print $4}')

    if [[ -z "$CIDR" ]]; then

        echo "[!] No IPv4 subnet found."
        return 1

    fi

    PREFIX=${CIDR##*/}

    # Restrict excessively large networks
    if (( PREFIX < 16 || PREFIX > 30 )); then

        echo "[!] Network $CIDR is outside the allowed scan range."
        return 1

    fi

    echo "Target Network: $CIDR"
    echo ""

    read -r -p "Scan this authorized network? (yes/no): " answer

    if [[ "$answer" != "yes" ]]; then

        echo "[!] Scan cancelled."
        return

    fi

    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

    SCAN_REPORT="$REPORT_DIR/device_scan_$TIMESTAMP.txt"

    echo "[*] Starting local network discovery..."
    echo ""

    if nmap -sn -n "$CIDR" | tee "$SCAN_REPORT"; then

        echo ""
        echo "[+] Device scan completed."
        echo "[+] Scan saved: $SCAN_REPORT"

        echo "$SCAN_REPORT" >> "$HISTORY"

    else

        echo "[!] Network scan failed."

    fi

    echo "=========================================="

}

# --------------------------------------------------
# FUNCTION 6: GENERATE COMPLETE NETWORK REPORT
# --------------------------------------------------

generate_report() {

    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

    REPORT="$REPORT_DIR/network_report_$TIMESTAMP.txt"

    {

        echo "=========================================="
        echo "       NETWORK SECURITY REPORT"
        echo "=========================================="

        echo "Date: $(date)"
        echo ""

        network_info

        geo_location

        echo ""
        echo "=========================================="
        echo "       REPORT GENERATION COMPLETED"
        echo "=========================================="

    } | tee "$REPORT"

    echo "$REPORT" >> "$HISTORY"

    echo ""
    echo "[+] Report saved successfully!"
    echo "[+] Location: $REPORT"

}

# --------------------------------------------------
# FUNCTION 7: VIEW PREVIOUS REPORTS
# --------------------------------------------------

view_reports() {

    echo ""
    echo "========== PREVIOUS SCAN REPORTS =========="

    if [[ -f "$HISTORY" ]]; then

        cat "$HISTORY"

    else

        echo "[!] No previous reports available."

    fi

    echo "=========================================="

}

# --------------------------------------------------
# MAIN PROGRAM
# --------------------------------------------------

if ! check_tools; then

    echo ""
    echo "[!] Please install all required tools."
    echo "Run: sudo apt install nmap curl jq iproute2 network-manager"
    exit 1

fi

while true; do

    echo ""
    echo "=========================================="
    echo "       ADVANCED NETWORK SCANNER"
    echo "          & IP GEOLOCATION"
    echo "=========================================="

    echo "1. Network Information"
    echo "2. Public IP Geolocation"
    echo "3. Local Network Device Discovery"
    echo "4. Generate Complete Security Report"
    echo "5. View Previous Scan Reports"
    echo "6. Exit"

    echo "=========================================="

    read -r -p "Enter your choice: " choice

    case "$choice" in

        1)

            network_info
            ;;

        2)

            geo_location
            ;;

        3)

            scan_network
            ;;

        4)

            generate_report
            ;;

        5)

            view_reports
            ;;

        6)

            echo ""
            echo "[+] Thank you for using Network Scanner."
            exit 0
            ;;

        *)

            echo "[!] Invalid choice. Please try again."
            ;;

    esac

done
