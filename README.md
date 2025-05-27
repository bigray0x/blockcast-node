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

### step-1 :install requried dependencies :

```
command -v git >/dev/null || (sudo apt-get update && sudo apt-get install -y git)
```

### step-2 :clone the repo :

```
git clone https://github.com/bigray0x/blockcast-node && cd blockcast-node 
```

install required packages using the script   

```
chmod +x setup.ah && ./setup.sh
```

### Step-3 : Start the node :

- Register Dashboard:

To get started, register in [Dashboard](https://app.blockcast.network?referral-code=Kk51D4)

``` 
docker-compose up -d
```

NB : if you’re running another node that uses port 8080 like Aztec and few others, make sure to change port 8080 to 8081 before starting the node.

- Here’s how you can do it:

``` 
cd blockcast-node && nano docker-compose.yaml
```

Navigate to the line where you see 8080:8080
Change it to 8081:8080

- Save the file using control x + y + enter.
