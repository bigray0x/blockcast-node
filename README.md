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

To get started, register in [Dashboard](https://app.blockcast.network?referral-code=Kk51D4), after setting up your account then start it below. 

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

- Check Logs

List running containers :

```
docker compose ps -a
```

Response should be like the image:

![Image 5-26-25 at 5 08 PM](https://github.com/user-attachments/assets/aed01b07-0a8d-45f5-8e39-a9d1855b16f4)


- Node not running? check logs: 

```
docker compose logs -fn 1000
```
skip logs if you have all containers running.

### step-4 : Register Node :

![Image 5-26-25 at 5 10 PM](https://github.com/user-attachments/assets/72b76df6-9d56-4195-80f9-0a4b6432cc46)


- Get location: 

``` 
curl -s https://ipinfo.io | jq '.city, .region, .country, .loc'
```

- Generate Node Data & Register:

```
docker compose exec blockcastd blockcastd init
```

Copy and paste the Registration URL from the terminal in browser to open the Dashboard.
With your Hardware ID and Challenge Key pre-filled, Fill-in your location from previous command.
Register your Node.


Wait a few minutes until your node truns Online

![Image 5-26-25 at 4 59 PM](https://github.com/user-attachments/assets/c6c93baf-a3b5-491b-8f52-38dd2034c4b8)

