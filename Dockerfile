FROM kalilinux/kali-rolling

RUN apt update && apt full-upgrade -y && \
    apt install -y \
    nmap netcat tcpdump traceroute dnsutils wireshark tshark \
    metasploit-framework exploitdb nikto gobuster wpscan \
    sqlmap dirb ffuf zaproxy \
    recon-ng theharvester dnsrecon sublist3r \
    hydra john hashcat aircrack-ng \
    && apt clean

RUN apt install -y python3 python3-pip && \
    pip3 install requests beautifulsoup4

RUN useradd -m kali && echo "kali:kali" | chpasswd && usermod -aG sudo kali

USER kali
WORKDIR /home/kali

# Comando padrão ao iniciar o contêiner
CMD ["/bin/bash"]

