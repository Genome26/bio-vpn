#!/bin/bash
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
MYIP=$(wget -qO- ifconfig.me)
colornow=$(cat /etc/rmbl/theme/color.conf)
export NC="\e[0m"
export yl='\033[0;33m';
export RED="\033[0;31m"
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
MYIP=$(wget -qO- ifconfig.me)
Isadmin=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $5}')
Exp2=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $3}')
export RED='\033[0;31m'
export GREEN='\033[0;32m'
Name=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $2}')
ipsaya=$(wget -qO- ifconfig.me)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini"
cpu_load=$(uptime | awk -F'load average:' '{print $2}' | cut -d, -f1)
cpu_load_percent=$(echo "scale=2; $cpu_load * 100 / $(nproc)" | bc)
checking_sc() {
useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
systemctl stop nginx
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC}${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •                 ${NC}$COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│            ${RED}PERMISSION DENIED !${NC}                  $COLOR1│"
echo -e "$COLOR1│   ${yl}Your VPS${NC} $ipsaya \033[0;36mHas been Banned ${NC}      $COLOR1│"
echo -e "$COLOR1│     ${yl}Buy access permissions for scripts${NC}          $COLOR1│"
echo -e "$COLOR1│             \033[0;32mContact Your Admin ${NC}                 $COLOR1│"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
key
fi
}
function key(){
rm -rf /root/rmbl
echo -e  "${COLOR1}╭══════════════════════════════════════════╮${NC}"
echo -e  "${COLOR1}│              PASWORD SCRIPT PAINTECH     │${NC}"
echo -e  "${COLOR1}╰══════════════════════════════════════════╯${NC}"
echo " "
read -rp "Masukan Key Kamu Disini ctrl + c Exit : " -e kode
cd
if [ -z $kode ]; then
echo -e "KODE SALAH SILAHKAN MASUKKAN ULANG KODENYA"
key
fi
clear
LIST=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/license/main/key | grep $kode | awk '{print $2}')
Key=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/license/main/key | grep $kode | awk '{print $3}')
KEY2=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/license/main/key | grep $kode | awk '{print $4}')
ADMIN=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/license/main/key | grep $kode | awk '{print $5}')
TOTALIP=$(curl -sS https://raw.githubusercontent.com/RMBL-VPN/license/main/key | grep $kode | awk '{print $6}')
U2=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $6}')
MYIP=$(curl -sS ipv4.icanhazip.com)
web=$(curl -sS  http://rmb.vip.app/ress | grep $kode | awk '{print $3}')
web2=$(curl -sS http://rmb.vip.app/ress | grep $kode | awk '{print $2}')
web3=$(curl -sS http://rmb.vip.app/ress | grep $kode | awk '{print $4}')
web4=$(curl -sS http://rmb.vip.app/ress | grep $kode | awk '{print $5}')
web5=$(curl -sS http://rmb.vip.app/ress | grep $kode | awk '{print $6}')
userscript=$(curl -sS https://pastebin.com/raw/YZFr8JDy | awk '{print $1}')
emailscript=$(curl -sS https://pastebin.com/raw/YZFr8JDy | awk '{print $2}')
tokenscript=$(curl -sS https://pastebin.com/raw/YZFr8JDy | awk '{print $3}')
userkey=$(curl -sS https://pastebin.com/raw/unGxyHYK | awk '{print $1}')
emailkey=$(curl -sS https://pastebin.com/raw/unGxyHYK | awk '{print $2}')
tokenkey=$(curl -sS https://pastebin.com/raw/unGxyHYK | awk '{print $3}')
if [[ $kode == $web ]]; then
MYIP=$(curl -sS ipv4.icanhazip.com)
hhari=$(date -d "$web3 days" +"%Y-%m-%d")
mkdir /root/rmbl
cd /root/rmbl
wget https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini >/dev/null 2>&1
if [ "$U4" = "$MYIP" ]; then
sed -i "s/### $U2 $U3 $U4 $U5/### $U2 $hhari $U4 $U5/g" /root/rmbl/ipmini
else
echo "### $author $hhari $MYIP $web2" >> ipmini
fi
sleep 0.5
rm -rf .git
git config --global user.email "${emailscript}" >/dev/null 2>&1
git config --global user.name "${userscript}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add ipmini
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${userscript}/permission >/dev/null 2>&1
git push -f https://${tokenscript}@github.com/${userscript}/permission >/dev/null 2>&1
rm -rf /root/rmbl
rm -rf /etc/github
clear
elif [[ $kode == $Key ]]; then
MYIP=$(curl -sS ipv4.icanhazip.com)
author4=$(cat /etc/profil)
hhari=$(date -d "$KEY2 days" +"%Y-%m-%d")
mkdir /root/casper
cd /root/casper
wget https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini >/dev/null 2>&1
if [ "$U4" = "$MYIP" ]; then
sed -i "s/### $U2 $U3 $U4 $U5/### $U2 $hhari $U4 $U5/g" /root/rmbl/ipmini
else
echo "### $author $hhari $MYIP $LIST" >> ipmini
fi
sleep 0.5
rm -rf .git
git config --global user.email "${emailscript}" >/dev/null 2>&1
git config --global user.name "${userscript}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add ipmini
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${userscript}/permission >/dev/null 2>&1
git push -f https://${tokenscript}@github.com/${userscript}/permission >/dev/null 2>&1
sleep 0.5
rm ipmini
wget https://raw.githubusercontent.com/RMBL-VPN/license/main/key >/dev/null 2>&1
if [ "$ADMIN" = "ON" ]; then
sed -i "/^### $LIST $Key $KEY2 $ADMIN $TOTALIP/d" /root/rmbl/key
else
sed -i "/^### $LIST $Key $KEY2/d" /root/rmbl/key
fi
sleep 0.5
rm -rf .git
git config --global user.email "${emailkey}" >/dev/null 2>&1
git config --global user.name "${userkey}" >/dev/null 2>&1
git init >/dev/null 2>&1
git add key
git commit -m register >/dev/null 2>&1
git branch -M main >/dev/null 2>&1
git remote add origin https://github.com/${userkey}/license >/dev/null 2>&1
git push -f https://${tokenkey}@github.com/${userkey}/license >/dev/null 2>&1
rm -rf /root/rmbl
rm -rf /etc/github
else
echo -e "KODE SALAH SILAHKAN MASUKKAN ULANG KODENYA"
sleep 1
key
fi
echo -e  "${COLOR1}╭══════════════════════════════════════════╮${NC}"
echo -e  "${COLOR1}│              INFO LICENSE KEY            │${NC}"
echo -e  "${COLOR1}╰══════════════════════════════════════════╯${NC}"
echo -e "SUCCES MASUKKAN KEY SILAHKAN DITUNGGU"
echo -e "2 MENIT AGAR SERVER KEREFRESH"
read -n 1 -s -r -p "Press any key to Exit"
systemctl restart xray
reboot
exit
clear
}
madmin=$(curl -sS https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini | grep $MYIP | awk '{print $5}')
checking_sc
cd
if [ ! -e /etc/per/id ]; then
mkdir -p /etc/per
echo "" > /etc/per/id
echo "" > /etc/per/token
elif [ ! -e /etc/perlogin/id ]; then
mkdir -p /etc/perlogin
echo "" > /etc/perlogin/id
echo "" > /etc/perlogin/token
elif [ ! -e /usr/bin/id ]; then
echo "" > /usr/bin/idchat
echo "" > /usr/bin/token
fi
if [ ! -e /etc/xray/ssh ]; then
echo "" > /etc/xray/ssh
elif [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
elif [ ! -e /etc/xray/sshx/listlock ]; then
echo "" > /etc/xray/sshx/listlock
elif [ ! -e /etc/vmess ]; then
mkdir -p /etc/vmess
elif [ ! -e /etc/vmess/listlock ]; then
echo "" > /etc/vmess/listlock
elif [ ! -e /etc/vless ]; then
mkdir -p /etc/vless
elif [ ! -e /etc/vless/listlock ]; then
echo "" > /etc/vless/listlock
elif [ ! -e /etc/trojan ]; then
mkdir -p /etc/trojan
elif [ ! -e /etc/trojan/listlock ]; then
echo "" > /etc/trojan/listlock
elif [ ! -e /etc/xray/noob ]; then
echo "" > /etc/xray/noob
fi
clear
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
bulan=$(date +%b)
tahun=$(date +%y)
ba="'"
today=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
todayd=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
today_v=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $9}')
today_rx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $2}')
today_rxv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $3}')
today_tx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $5}')
today_txv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
bulan=$(date +%b)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $9}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $10}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $3}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $4}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
bulan2=$(date +%Y-%m)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $8}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $9}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $2}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $3}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /etc/t1)" != '0' ]; then
yesterday=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $8}')
yesterday_v=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $9}')
yesterday_rx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $2}')
yesterday_rxv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $3}')
yesterday_tx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $5}')
yesterday_txv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $6}')
else
yesterday=NULL
yesterday_v=NULL
yesterday_rx=NULL
yesterday_rxv=NULL
yesterday_tx=NULL
yesterday_txv=NULL
fi
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
status_ws="${COLOR1}ON${NC}"
else
status_ws="${RED}OFF${NC}"
fi
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
status_nginx="${COLOR1}ON${NC}"
else
status_nginx="${RED}OFF${NC}"
systemctl start nginx
fi
if [[ -e /usr/bin/kyt ]]; then
nginx=$( systemctl status kyt | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
echo -ne
else
systemctl start kyt
fi
fi
rm -rf /etc/status
xray=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
status_xray="${COLOR1}ON${NC}"
else
status_xray="${RED}OFF${NC}"
fi

stat_noobz=$( systemctl status noobzvpns | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $stat_noobz == "running" ]]; then
    stat_noobz="${COLOR1}ON${NC}"
else
    stat_noobz="${RED}OFF${NC}"
    systemctl start noobzvpns
fi

# // Dropbear
dropbear_status=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $dropbear_status == "running" ]]; then
   status_beruangjatuh="${COLOR1}ON${NC}"
else
   status_beruangjatuh="${RED}OFF${NC}"
fi

udp_custom=$( systemctl status udp-custom | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $udp_custom == "running" ]]; then
    status_udp="${COLOR1}ON${NC}"
else
    status_udp="${RED}OFF${NC}"
    systemctl start udp-custom
fi

stunnel_service=$(/etc/init.d/stunnel4 status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $stunnel_service == "running" ]]; then
   status_stunnel=" ${GREEN}ON${NC}"
else
   status_stunnel="${RED}OFF${NC}"
fi

slc=$(systemctl status client-sldns | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $slc == "running" ]]; then 
   slc=" ${GREEN}ON${NC}"
else
   slc="${RED}OFF${NC}"
fi

# STATUS EXPIRED ACTIVE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[4$below" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}(Registered)${Font_color_suffix}"
Error="${Green_font_prefix}${Font_color_suffix}${Red_font_prefix}[EXPIRED]${Font_color_suffix}"

today=$(date -d "0 days" +"%Y-%m-%d")
if [[ $today < $Exp2 ]]; then
    sts="${Info}"
else
    sts="${Error}"
fi
# TOTAL CREATE ACC VMESS
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
# TOTAL CREATE ACC VLESS
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
# TOTAL CREATE ACC TROJAN
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
# TOTAL CREATE ACC SSH
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
# TOTAL CREATE ACC NOOBZ
jumlah_noobz=$(grep -c -E "^### " "/etc/xray/noob")
function m-ip2(){
clear
cd
if [[ -e /etc/github/api ]]; then
m-ip
else
mkdir /etc/github
echo "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" > /etc/github/api
echo "mr.ryuuko@gmail.com" > /etc/github/email
echo "Hionepaintech" > /etc/github/username
m-ip
fi
}
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
if [ "$Isadmin" = "ON" ]; then
uis="${COLOR1}Premium ADMIN VIP$NC"
else
uis="${COLOR1}Premium Version$NC"
fi
function m-bot2(){
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  ${WH}Please select a Bot type below                 ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  [ 1 ] ${WH}Buat/Edit BOT INFO Multi Login SSH, XRAY & TRANSAKSI   ${NC}"
echo -e "$COLOR1  [ 2 ] ${WH}Buat/Edit BOT INFO Create User & Lain Lain    ${NC}"
echo -e ""
echo -e "$COLOR1  [ 3 ] ${WH}Buat/Edit BOT INFO Backup Telegram    ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
read -p "   Please select numbers 1-3 or Any Button(Random) to exit : " bot
echo ""
if [[ $bot == "1" ]]; then
clear
rm -rf /etc/perlogin
mkdir -p /etc/perlogin
cd /etc/perlogin
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Multi Login"
read -rp "Enter Token (Creat on @BotFather) : " -e token2
echo "$token2" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat
echo "$idat" > id
sleep 1
m-bot2
fi
if [[ $bot == "2" ]]; then
clear
rm -rf /etc/per
mkdir -p /etc/per
cd /etc/per
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Akun Dan Lain Lain"
read -rp "Enter Token (Creat on @BotFather) : " -e token3
echo "$token3" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat2
echo "$idat2" > id
sleep 1
m-bot2
fi
if [[ $bot == "3" ]]; then
clear
rm -rf /usr/bin/token
rm -rf /usr/bin/idchat
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Backup Telegram"
read -rp "Enter Token (Creat on @BotFather) : " -e token23
echo "$token23" > /usr/bin/token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idchat
echo "$idchat" > /usr/bin/idchat
sleep 1
m-bot2
fi
menu
}
clear
cpu_usage=$(mpstat 1 1 | awk '$12 ~ /[0-9.]+/ {print $12}')
clear && clear && clear
clear;clear;clear
echo -e " $COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│${NC} ${COLBG1}              ${WH}⛩ PAINTECH VPN TUNELING ⛩                ${NC} $COLOR1│ $NC"
echo -e " $COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e " $COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│$NC${WH} ❈ OS            ${COLOR1}: ${WH}$MODEL2${NC}"
echo -e " $COLOR1│$NC${WH} ❈ ISP           ${COLOR1}: ${WH}$ISP${NC}"
echo -e " $COLOR1│$NC${WH} ❈ RAM           ${COLOR1}: ${WH}$uram / $tram MB${NC}"
echo -e " $COLOR1│$NC${WH} ❈ CITY          ${COLOR1}: ${WH}$CITY${NC}"
echo -e " $COLOR1│$NC${WH} ❈ IP VPS        ${COLOR1}: ${WH}$MYIP${NC}"
echo -e " $COLOR1│$NC${WH} ❈ CPU Load      ${COLOR1}: ${WH}$cpu_load_percent%${NC}"
echo -e " $COLOR1│$NC${WH} ❈ DOMAIN        ${COLOR1}: ${WH}$(cat /etc/xray/domain)"
echo -e " $COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e "    $COLOR1╭═════════════════ • ${NC}${WH}STATUS SERVER${NC}${COLOR1} • ═══════════════╮${NC}"
echo -e "     ${WH} SSH WS : ${status_ws} ${WH} XRAY : ${status_xray} ${WH} NGINX : ${status_nginx} ${WH} DROPBEAR : ${status_beruangjatuh}$NC"
echo -e "               ${WH} UDP CUSTOM : ${status_udp} ${WH} NOOBZVPNS : ${stat_noobz} ${NC}"
echo -e "    $COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "         $COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "                  $COLOR1$NC${WH}    LIST ACCOUNT PREMIUM ${NC}"
echo -e "         $COLOR1      ═════════════════════════════════ ${NC}"
echo -e "                 $COLOR1$NC${WH}  SSH/OPVPN   =  ${COLOR1}$total_ssh ${NC}${WH} ACCOUNT ${NC}"
echo -e "                 $COLOR1$NC${WH}  VMESS/WS    =  ${COLOR1}$vmess ${NC}${WH} ACCOUNT ${NC}"
echo -e "                 $COLOR1$NC${WH}  VLESS/WS    =  ${COLOR1}$vless ${NC}${WH} ACCOUNT ${NC}"
echo -e "                 $COLOR1$NC${WH}  TROJAN/GRPC =  ${COLOR1}$trtls ${NC}${WH} ACCOUNT${NC}"
echo -e "                 $COLOR1$NC${WH}  NOOBZVPNS   =  ${COLOR1}$jumlah_noobz ${NC}${WH} ACCOUNT${NC}"
echo -e "         $COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e " $COLOR1╭════════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│$NC ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSH-WS    ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}NOTIF BOT  ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"
echo -e " $COLOR1│$NC ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS     ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}THEMES     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"    
echo -e " $COLOR1│$NC ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS     ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}UPDATE     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"   
echo -e " $COLOR1│$NC ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN    ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}SYSTEM     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}NOOBZVPN  ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}BACKUP     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}BOT AKUN  ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}12${WH}]${NC} ${COLOR1}• ${WH}RUNNING    ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}22${WH}]${NC} ${COLOR1}• ${WH}DELATE XP ${WH}[${COLOR1}Menu${WH}]   ${NC} $COLOR1│${NC}  ${WH}[${COLOR1}23${WH}]${NC} ${COLOR1}• ${WH}RESTART    ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"
echo -e " $COLOR1╰════════════════════════════════════════════════════════╯${NC}"
if [ "$Isadmin" = "ON" ]; then
echo -e "$COLOR1╭════════════════════ • ${WH}PANEL ADMIN VIP${NC}${COLOR1} • ════════════════╮${NC}"
echo -e "$COLOR1│  ${WH}[${COLOR1}13${WH}]${NC} ${COLOR1}• ${WH}RESELLER IP ${WH}[${COLOR1}MENU${WH}] $COLOR1 $NC"
ressee="m-ip2"
bottt="m-bot"
echo -e "$COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
else
ressee="menu"
bottt="menu"
fi
echo -e "$COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC  ${WH}Total    $COLOR1│${NC}     ${WH}Today       ${WH}Yesterday       ${WH}Month         ${NC}"
echo -e "$COLOR1│$NC ${WH}Bantwidth $COLOR1│${NC}   ${WH}$today_tx $today_txv     ${WH}$yesterday_tx $yesterday_txv      ${WH}$month_tx $month_txv$COLOR1${NC}"
echo -e "$COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
DATE=$(date +'%Y-%m-%d')
datediff() {
d1=$(date -d "$1" +%s)
d2=$(date -d "$2" +%s)
echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
function new(){
cat> /etc/cron.d/autocpu << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/3 * * * * root /usr/bin/autocpu
END
echo "Auto-Reboot CPU 100% TURN ON."
sleep 1
menu
}
function newx(){
clear
until [[ $usagee =~ ^[0-9]+$ ]]; do
read -p "kuota user format angka 1, 2 atau 3 (TERA): " usagee
done
echo "$usagee" > /etc/usagee
cat> /etc/cron.d/bantwidth << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/10 * * * * root /usr/bin/bantwidth
END
echo "Auto-Shutdown $usagee TERA TURN ON."
sleep 1
menu
}
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
domain=$(cat /etc/xray/domain)
function restartservice(){    
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl restart nginx
    systemctl restart xray
    systemctl restart noobzvpns
    systemctl restart daemon
    systemctl restart udp-custom
    systemctl restart ws-dropbear
    systemctl restart ws-stunnel
    systemctl restart openvpn
    systemctl restart cron
    systemctl restart netfilter-persistent
    systemctl restart squid
    systemctl restart badvpn1
    systemctl restart badvpn2
    systemctl restart badvpn3
    systemctl restart client-sldns
    systemctl restart server-sldns
}
clear
echo -e "$COLOR1 ╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}          ${WH}RESTART SERVICE VPS             ${NC} $COLOR1 $NC"
echo -e "$COLOR1 ╰══════════════════════════════════════════╯${NC}"
echo -e ""
echo -e "  \033[1;91m Restart All Service... \033[1;37m"
fun_bar 'res1'

echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
}
function updatews(){
cd
rm -rf *
wget https://raw.githubusercontent.com/Genome26/bio-vpn/bio-vpn/menu/install-up.sh &> /dev/null
chmod +x install_up.sh
./install_up.sh
}
function xp(){
    clear
    echo "SUCCESSFULLY DELETE ALL EXPIRED ACCOUNT "
    echo "----------------------------------------"
cd
echo 1 > /proc/sys/vm/drop_caches
data=( `cat /etc/xray/ssh | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
pass=$(grep -w "^### $user" "/etc/xray/ssh" | cut -d ' ' -f 4 | sort | uniq)
exp=$(grep -w "^### $user" "/etc/xray/ssh" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^### $user $exp $pass/d" /etc/xray/ssh
if getent passwd $user > /dev/null 2>&1; then
userdel $user > /dev/null 2>&1
fi
rm /home/vps/public_html/ssh-$user.txt >/dev/null 2>&1
rm /etc/xray/sshx/${user}IP >/dev/null 2>&1
rm /etc/xray/sshx/${user}login >/dev/null 2>&1
fi
done
data=( `cat /etc/xray/config.json | grep '^#vmg' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#vmg $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
uuid=$(grep -w "^#vmg $user" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
if [ ! -e /etc/vmess/akundelete ]; then
echo "" > /etc/vmess/akundelete
fi
clear
echo "### $user $exp $uuid" >> /etc/vmess/akundelete
sed -i "/^#vmg $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#vm $user $exp/,/^},{/d" /etc/xray/config.json
rm -f /etc/xray/$user-tls.json /etc/xray/$user-none.json
rm /home/vps/public_html/vmess-$user.txt >/dev/null 2>&1
rm /etc/vmess/${user}IP >/dev/null 2>&1
rm /etc/vmess/${user}login >/dev/null 2>&1
fi
done
data=( `cat /etc/xray/config.json | grep '^#vlg' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#vlg $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
uuid=$(grep -w "^#vlg $user" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
if [ ! -e /etc/vless/akundelete ]; then
echo "" > /etc/vless/akundelete
fi
clear
echo "### $user $exp $uuid" >> /etc/vless/akundelete
sed -i "/^#vlg $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#vl $user $exp/,/^},{/d" /etc/xray/config.json
rm /home/vps/public_html/vless-$user.txt >/dev/null 2>&1
rm /etc/vless/${user}IP >/dev/null 2>&1
rm /etc/vless/${user}login >/dev/null 2>&1
fi
done
data=( `cat /etc/xray/config.json | grep '^#trg' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#trg $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
uuid=$(grep -w "^#trg $user" "/etc/xray/config.json" | cut -d ' ' -f 4 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
if [ ! -e /etc/trojan/akundelete ]; then
echo "" > /etc/trojan/akundelete
fi
clear
echo "### $user $exp $uuid" >> /etc/trojan/akundelete
sed -i "/^#tr $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#trg $user $exp/,/^},{/d" /etc/xray/config.json
rm /home/vps/public_html/trojan-$user.txt >/dev/null 2>&1
rm /etc/trojan/${user}IP >/dev/null 2>&1
rm /etc/trojan/${user}login >/dev/null 2>&1
fi
done
systemctl restart xray
data=( `cat /etc/xray/config.json | grep '^#ssg' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#ssg $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^#ssg $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#ssg $user $exp/,/^},{/d" /etc/xray/config.json
fi
done
systemctl restart xray
data=( `cat /etc/xray/config.json | grep '^#ss' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#ss $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^#ss $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#ss $user $exp/,/^},{/d" /etc/xray/config.json
fi
done
systemctl restart xray
hariini=`date +%d-%m-%Y`
cat /etc/shadow | cut -d: -f1,8 | sed /:$/d > /tmp/expirelist.txt
totalaccounts=`cat /tmp/expirelist.txt | wc -l`
for((i=1; i<=$totalaccounts; i++ ))
do
tuserval=`head -n $i /tmp/expirelist.txt | tail -n 1`
username=`echo $tuserval | cut -f1 -d:`
userexp=`echo $tuserval | cut -f2 -d:`
userexpireinseconds=$(( $userexp * 86400 ))
tglexp=`date -d @$userexpireinseconds`
tgl=`echo $tglexp |awk -F" " '{print $3}'`
while [ ${#tgl} -lt 2 ]
do
tgl="0"$tgl
done
while [ ${#username} -lt 15 ]
do
username=$username" "
done
bulantahun=`echo $tglexp |awk -F" " '{print $2,$6}'`
todaystime=`date +%s`
if [ $userexpireinseconds -ge $todaystime ] ;
then
:
else
userdel --force $username
fi
done
systemctl reload ssh

    read -n 1 -s -r -p "Press any key to back on menu"
    menu
}
echo -e "$COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC ${WH} ❈ Versi   ${NC}: ${WH}$(cat /opt/.ver) Version${NC}$COLOR1"
echo -e "$COLOR1│$NC ${WH} ❈ Client ${NC} : ${WH}$author${NC}"
echo -e "$COLOR1│$NC ${WH} ❈ Durasi ${NC} : ${WH}$certificate hari${NC}$COLOR1"
echo -e "$COLOR1│$NC ${WH} ❈ Expiry ${NC} : ${WH}$Exp2 $sts ${NC}$COLOR1"
echo -e "$COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; m-noobz ;;
06 | 6) clear ; m-bot ;;
07 | 7) clear ; m-bot2  ;;
08 | 8) clear ; m-theme ;;
09 | 9) clear ; m-update ;;
10 | 10) clear ; m-system ;;
11 | 11) clear ; m-backup;;
12 | 12) clear ; running ;;
13 | 13) clear ; $ressee ;;
14 | 14) clear ; key ;;
22 | 22) clear ; xp ;;
23 | 23) clear ; restartservice ;;
89 | 89) clear ; reboot ;;
88 | 88) clear ; new ;;
77 | 77) clear ; newx ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
