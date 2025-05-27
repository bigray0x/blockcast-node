# BlockCast Node Setup Guide

Blockcast is a content delivery network node that helps users earn rewards with idle internet bandwidth, built on solana.

### Pre-Requisites 

- Connection quality - at least 10mbp/s
- Reliability - VPS (recommended)
- Hardware score - (more RAM, disk, CPU the better)
- Location (where your IP is physically based)
- BONUS: Multicast-enabled IPs earn extra points!

this node will work on linux PCs or VPS.

how to install?  

### install requried dependencies :

```
command -v git >/dev/null || (sudo apt-get update && sudo apt-get install -y git)
```

### clone the repo :

```
git clone https://github.com/bigray0x/blockcast-node && cd blockcast-node 
```

install required packages using the script   

```
chmod +x setup.ah && ./setup.sh
```