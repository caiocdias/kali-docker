# Pentest Docker Environment

This project sets up a Docker environment for penetration testing of networks and web applications.

## Included Tools
- **Networking**: Nmap, Netcat, TCPDump, Wireshark, etc.
- **Exploitation**: Metasploit, Nikto, Gobuster, WPSCan.
- **Web**: SQLMap, FFUF, ZAP.
- **Information Gathering**: Recon-ng, TheHarvester, Sublist3r.
- **Brute Force**: Hydra, John, Hashcat.
- **Wireless**: Aircrack-ng.

## How to Use

### Build the Image
```bash
docker build -t pentest-environment .

