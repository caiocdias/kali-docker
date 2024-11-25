FROM kalilinux/kali-rolling

RUN apt update && apt full-upgrade -y && \
    apt install -y \
    nmap netcat-openbsd tcpdump traceroute dnsutils wireshark tshark ettercap-graphical \
    metasploit-framework exploitdb nikto gobuster wpscan \
    sqlmap dirb ffuf zaproxy burpsuite \
    recon-ng theharvester dnsrecon sublist3r amass enum4linux \
    hydra john hashcat cewl crunch wordlists \
    aircrack-ng kismet hcxdumptool hcxtools bettercap \
    radare2 gdb binwalk apktool jadx ghidra \
    wfuzz python3-impacket xsser \
    curl wget git vim tmux iputils-ping openssh-client \
    docker.io podman buildah kali-desktop-xfce xrdp \
    && apt clean

RUN apt install -y python3 python3-pip && \
    pip3 install requests beautifulsoup4 pwntools impacket

RUN apt install -y nodejs npm && \
    npm install -g http-server wappalyzer

RUN useradd -m kali && echo "kali:kali" | chpasswd && usermod -aG sudo kali

RUN systemctl enable xrdp && \
    echo "startxfce4" > /etc/skel/.xsession && \
    echo "startxfce4" > /root/.xsession && \
    sed -i 's/port=-1/port=3389/' /etc/xrdp/xrdp.ini

USER kali
WORKDIR /home/kali

EXPOSE 3389

CMD ["service", "xrdp", "start", "&&", "bash"]
