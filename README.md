
# Pentest Docker Environment

This project sets up a comprehensive Docker environment for penetration testing, ethical hacking, and bug bounty hunting.

## Included Tools

### Networking and Information Gathering
- **Networking**: Nmap, Netcat, TCPDump, Traceroute, Wireshark, Tshark.
- **DNS Tools**: DNSUtils, DNSRecon, Sublist3r, Amass.
- **Reconnaissance**: Recon-ng, TheHarvester, Assetfinder, Aquatone, Subfinder.

### Exploitation and Vulnerability Scanning
- **Frameworks**: Metasploit, ExploitDB.
- **Web Testing**: Nikto, Gobuster, WPSCan, SQLMap, Dirb, FFUF.
- **API and Web Analysis**: ZAP Proxy, Burp Suite.

### Brute Force and Wordlist Generation
- **Password Cracking**: Hydra, John, Hashcat.
- **Wordlist Tools**: Cewl, Crunch.

### Wireless and Network Attacks
- **Wireless Tools**: Aircrack-ng, Kismet, Bettercap, HCXDumptool, HCXTools.

### Reverse Engineering and Binary Analysis
- **Binary Analysis**: Radare2, GDB, Binwalk, Jadx, Apktool, Ghidra.
- **Exploitation Utilities**: PWNTools, Ropper.

### Web Enumeration and Testing
- **HTTP Tools**: WFuzz, XSSer.
- **Discovery**: Nuclei, HTTPProbe, GF.

### Additional Tools
- **Container Security**: Trivy.
- **Scripting and Programming**: Python3 (with Requests, BeautifulSoup4, Impacket), Node.js (with Wappalyzer).

## How to Use

### Build the Image
```bash
docker build -t pentest-environment .
```

### Run the Container
```bash
docker run -it --rm -p 3389:3389 pentest-environment
```

### Connect via RDP
Use any RDP client to connect to `localhost:3389`. The default credentials are:
- Username: kali
- Password: kali

### Notes
This environment includes a full XFCE desktop and XRDP for graphical access. Additional tools can be installed as needed.

## Contributing
Feel free to submit issues or contribute to this project with new tools or configurations.
