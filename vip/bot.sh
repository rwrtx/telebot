#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
hosting=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/domain)

#install
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
mkdir -p /root/
cd /root/
wget https://raw.githubusercontent.com/rwrtx/telebot/main/vip/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
azi=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

cat > /root/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$azi"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m cybervpn
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn
clear

echo "downloading asset"

wget -q -O /usr/bin/panelbot "http://bot.kvm-xcode.biz.id/bot/panelbot.sh" && chmod +x /usr/bin/panelbot





wget -q -O /usr/bin/addnoobz "http://cybervpn.serv00.net/Autoscript-by-azi-main/botssh/addnoobz.sh" && chmod +x /usr/bin/addnoobz



wget -q -O /root/log-install.txt "http://cybervpn.serv00.net/Autoscript-by-azi-main/botssh/log-install.txt"



wget -q -O /usr/bin/add-vless "http://$hosting/Autoscript-by-azi-main/botssh/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "http://$hosting/Autoscript-by-azi-main/botssh/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "http://$hosting/Autoscript-by-azi-main/botssh/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "http://$hosting/Autoscript-by-azi-main/botssh/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "http://$hosting/Autoscript-by-azi-main/botssh/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "http://$hosting/Autoscript-by-azi-main/botssh/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "http://$hosting/Autoscript-by-azi-main/botssh/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "http://$hosting/Autoscript-by-azi-main/botssh/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "http://$hosting/Autoscript-by-azi-main/botssh/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "http://$hosting/Autoscript-by-azi-main/botssh/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "http://cybervpn.serv00.net/Autoscript-by-azi-main/botssh/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "http://$hosting/Autoscript-by-azi-main/botssh/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "http://$hosting/Autoscript-by-azi-main/botssh/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "http://$hosting/Autoscript-by-azi-main/botssh/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "http://$hosting/Autoscript-by-azi-main/botssh/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "http://$hosting/Autoscript-by-azi-main/botssh/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "http://$hosting/Autoscript-by-azi-main/botssh/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "http://$hosting/Autoscript-by-azi-main/botssh/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "http://$hosting/Autoscript-by-azi-main/botssh/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "http://$hosting/Autoscript-by-azi-main/botssh/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "http://$hosting/Autoscript-by-azi-main/botssh/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "http://$hosting/Autoscript-by-azi-main/botssh/cek-mts.sh" && chmod +x /usr/bin/cek-mts


echo " Installations complete, type /menu on your bot "

rm -f cybervpn.zip
