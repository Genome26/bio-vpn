#!/bin/bash
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
colornow=$(cat /etc/rmbl/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
ipsaya=$(wget -qO- ifconfig.me)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/flowingwaters26/ipmini/ipmini/ipmini"
checking_sc() {
useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}         ${WH}• AUTOSCRIPT PREMIUM •                ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│            ${RED}PERMISSION DENIED !${NC}                  │"
echo -e "$COLOR1│   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}                             │"
echo -e "$COLOR1│     \033[0;33mBuy access permissions for scripts${NC}          │"
echo -e "$COLOR1│             \033[0;33mContact Your Admin ${NC}                 │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
exit
fi
}
checking_sc
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
domain=`cat /etc/xray/domain`
CHATID2=$(cat /etc/perlogin/id)
KEY2=$(cat /etc/perlogin/token)
URL2="https://api.telegram.org/bot$KEY2/sendMessage"
cd
if [ ! -e /etc/xray/sshx/akun ]; then
mkdir -p /etc/xray/sshx/akun
fi
function usernew(){
clear
domen=`cat /etc/xray/domain`
sldomain=`cat /etc/xray/dns`
slkey=`cat /etc/slowdns/server.pub`
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}              ${WH}• SSH PANEL MENU •               ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
until [[ $Login =~ ^[a-zA-Z0-9_.-]+$ && ${CLIENT_EXISTS} == '0' ]]; do
read -p "Username : " Login
CLIENT_EXISTS=$(grep -w $Login /etc/xray/ssh | wc -l)
if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}              ${WH}• SSH PANEL MENU •               ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1│${WH} Nama Duplikat Silahkan Buat Nama Lain.          $COLOR1│"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
read -n 1 -s -r -p "Press any key to back"
usernew
fi
done
read -p "Password : " Pass
until [[ $masaaktif =~ ^[0-9]+$ ]]; do
read -p "Expired (hari): " masaaktif
done
until [[ $iplim =~ ^[0-9]+$ ]]; do
read -p "Limit User (IP): " iplim
done
if [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
fi
if [ -z ${iplim} ]; then
iplim="0"
fi
echo "${iplim}" >/etc/xray/sshx/${Login}IP
IP=$(curl -sS ifconfig.me);
if [[ -e /etc/cloudfront ]]; then
cloudfront=$(cat /etc/cloudfront)
else
cloudfront="-"
fi
sleep 1
clear
expi=$(date -d "+$masaaktif days" +"%Y-%m-%d")
rema=$(date -d "+$masaaktif days" +"%Y-%m-%d %H:%M")
remad=$(date -d "$rema" +"%Y%m%d%H%M")
echo 'bash /usr/bin/xp' | at -t "$remad" 2>/dev/null
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "### $Login $expi $Pass $remad" >> /etc/xray/ssh
cat > /home/vps/public_html/ssh-$Login.txt <<-END
_______________________________
Format SSH OVPN Account
_______________________________
Username         : $Login
Password         : $Pass
Expired              : $exp
_______________________________
DOMAIN             : $domen
ISP/PROVIDER      : $ISP
REGION             : $CITY
LOGIN LIMIT      : ${iplim} Device
_______________________________
       PORT INFORMATION 
_______________________________
Port OpenSSH     : 22
Port Dropbear    : 143, 109
Port SSH WS      : 80, 8080
Port SSH SSL WS  : 443
Port SSL/TLS     : 777, 222
BadVPN UDP       : 7100, 7300, 7300
_______________________________
HTTP COSTUM : $domen:80@$Login:$Pass
_______________________________
Payload Websocket   :
GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]
_______________________________
END
if [[ -e /etc/cloudfront ]]; then
TEXT="
◇━━━━━━━━━━━━━━━━━◇
      Premium SSH Account
◇━━━━━━━━━━━━━━━━━◇
Username        :  <code>$Login</code>
Password        :  <code>$Pass</code>
Expired On       :  $exp
◇━━━━━━━━━━━━━━━━━◇
ɪꜱᴘ ᴘʀᴏᴠɪᴅᴇʀ  =  $ISP
ʀᴇɢɪᴏɴ             =  $CITY
ʜᴏꜱᴛ/ᴅᴏᴍᴀɪɴ  =  <code>$domen</code>
ʟᴏɢɪɴ ʟɪᴍɪᴛ     =  ${iplim} Device
◇━━━━━━━━━━━━━━━━━◇
       PORT INFORMATION 
◇━━━━━━━━━━━━━━━━━◇
ᴏᴘᴇɴꜱꜱʜ      22
ᴅʀᴏᴘʙᴇᴀʀ    109, 143
ꜱꜱʜ ᴡꜱ          80, 8080
ꜱꜱʜ ꜱꜱʟ ᴡꜱ   443
ssh stunel    777,222
ssh ᴜᴅᴘ        1-65535
ʙᴀᴅᴠᴘɴ ᴜᴅᴘɢᴡ   7100, 7300, 7300
◇━━━━━━━━━━━━━━━━━◇
HC : <code>$domen:80@$Login:$Pass</code>
◇━━━━━━━━━━━━━━━━━◇
PAYLOAD WEBSOCKET :
<code>GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]</code>
◇━━━━━━━━━━━━━━━━━◇
Save Link Account: http://$domen:89/ssh-$Login.txt
◇━━━━━━━━━━━━━━━━━◇
$author
◇━━━━━━━━━━━━━━━━━◇
"
else
TEXT="
◇━━━━━━━━━━━━━━━━━◇
      Premium SSH Account
◇━━━━━━━━━━━━━━━━━◇
Username        :  <code>$Login</code>
Password        :  <code>$Pass</code>
Expired On       :  $exp
◇━━━━━━━━━━━━━━━━━◇
ɪꜱᴘ ᴘʀᴏᴠɪᴅᴇʀ  =  $ISP
ʀᴇɢɪᴏɴ             =  $CITY
ʜᴏꜱᴛ/ᴅᴏᴍᴀɪɴ  =  <code>$domen</code>
ʟᴏɢɪɴ ʟɪᴍɪᴛ     =  ${iplim} Device
◇━━━━━━━━━━━━━━━━━◇
       PORT INFORMATION 
◇━━━━━━━━━━━━━━━━━◇
ᴏᴘᴇɴꜱꜱʜ      22
ᴅʀᴏᴘʙᴇᴀʀ    109, 143
ꜱꜱʜ ᴡꜱ          80, 8080
ꜱꜱʜ ꜱꜱʟ ᴡꜱ   443
ssh stunel    777,222
ssh ᴜᴅᴘ        1-65535
ʙᴀᴅᴠᴘɴ ᴜᴅᴘɢᴡ   7100, 7300, 7300
◇━━━━━━━━━━━━━━━━━◇
HC : <code>$domen:80@$Login:$Pass</code>
◇━━━━━━━━━━━━━━━━━◇
PAYLOAD WEBSOCKET :
<code>GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]</code>
◇━━━━━━━━━━━━━━━━━◇
Save Link Account: http://$domen:89/ssh-$Login.txt
◇━━━━━━━━━━━━━━━━━◇
$author
◇━━━━━━━━━━━━━━━━━◇
"
fi
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
user2=$(echo "$Login" | cut -c 1-3)
TIME2=$(date +'%Y-%m-%d %H:%M:%S')
TEXT2="
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<b>   PEMBELIAN SSH SUCCES </b>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<b>DOMAIN  :</b> <code>${domain} </code>
<b>CITY    :</b> <code>$CITY </code>
<b>DATE    :</b> <code>${TIME2} WIB </code>
<b>DETAIL  :</b> <code>Trx SSH </code>
<b>USER    :</b> <code>${user2}xxx </code>
<b>IP      :</b> <code>${iplim} IP </code>
<b>DURASI  :</b> <code>$masaaktif Hari </code>
<code>◇━━━━━━━━━━━━━━━━━◇</code>
<i>Notif Pembelian Akun Ssh..</i>"
curl -s --max-time $TIMES -d "chat_id=$CHATID2&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL2 >/dev/null
clear
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC} ${WH}• Premium SSH Account  • " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Username   ${COLOR1}: ${WH}$Login"  | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Password   ${COLOR1}: ${WH}$Pass" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Expired On ${COLOR1}: ${WH}$exp"  | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}ISP Provider     ${COLOR1}: ${WH}$ISP" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Negara       ${COLOR1}: ${WH}$CITY" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Domain Host      ${COLOR1}: ${WH}$domen" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Login Limit${COLOR1}: ${WH}${iplim} Device" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC ${WH}PORT INFORMATION " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}OpenSSH    ${COLOR1}: ${WH}22" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Dropbear   ${COLOR1}: ${WH}109, 143" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH-WS     ${COLOR1}: ${WH}80,8080" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH-SSL-WS ${COLOR1}: ${WH}443" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH STUNEL    ${COLOR1}: ${WH}777,222" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH UDP  ${COLOR1}: ${WH}1-65535" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}UDPGW      ${COLOR1}: ${WH}7100-7300" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}HTTP COSTUM${COLOR1}: ${WH}$domen:80@$Login:$Pass" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}PAYLOAD${COLOR1}: ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1${NC}${WH}GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}Save Link Acount    : " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}http://$domen:89/ssh-$Login.txt${NC}$COLOR1 $NC" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}    ${WH}• $author •${NC}                 $COLOR1 $NC" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo "" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
function trial(){
clear
domen=`cat /etc/xray/domain`
sldomain=`cat /etc/xray/dns`
slkey=`cat /etc/slowdns/server.pub`
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
clear
IP=$(curl -sS ifconfig.me)
cd
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}           ${WH}• TRIAL SSH Account •               ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e ""
until [[ $timer =~ ^[0-9]+$ ]]; do
read -p "Expired (Minutes): " timer
done
Login=Trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari=0
Pass=1
iplim=1
if [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
fi
if [ -z ${iplim} ]; then
iplim="0"
fi
if [[ -e /etc/cloudfront ]]; then
cloudfront=$(cat /etc/cloudfront)
else
cloudfront="Kosong"
fi
echo "$iplim" > /etc/xray/sshx/${Login}IP
expi=`date -d "$hari days" +"%Y-%m-%d"`
rema=$(date -d "+$timer minutes" +"%Y-%m-%d %H:%M")
remad=$(date -d "$rema" +"%Y%m%d%H%M")
echo 'bash /usr/bin/xp' | at -t "$remad" 2>/dev/null
useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "### $Login $expi $Pass $remad" >> /etc/xray/ssh
tmux new-session -d -s $Login "trial ssh $Login $expi $Pass ${timer}"
cat > /home/vps/public_html/ssh-$Login.txt <<-END
_______________________________
Format SSH OVPN Account
_______________________________
Username         : $Login
Password         : $Pass
Expired              : $exp
_______________________________
DOMAIN             : $domen
ISP/PROVIDER      : $ISP
REGION             : $CITY
LOGIN LIMIT      : ${iplim} Device
_______________________________
       PORT INFORMATION 
_______________________________
Port OpenSSH     : 22
Port Dropbear    : 143, 109
Port SSH WS      : 80, 8080
Port SSH SSL WS  : 443
Port SSL/TLS     : 777, 222
BadVPN UDP       : 7100, 7300, 7300
_______________________________
HTTP COSTUM : $domen:80@$Login:$Pass
_______________________________
Payload Websocket   :
GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]
_______________________________
END
if [[ -e /etc/cloudfront ]]; then
TEXT="
◇━━━━━━━━━━━━━━━━━◇
Trial SSH Premium Account
◇━━━━━━━━━━━━━━━━━◇
Username        :  <code>$Login</code>
Password        :  <code>$Pass</code>
Expired On       :  $exp
◇━━━━━━━━━━━━━━━━━◇
ɪꜱᴘ ᴘʀᴏᴠɪᴅᴇʀ  =  $ISP
ʀᴇɢɪᴏɴ             =  $CITY
ʜᴏꜱᴛ/ᴅᴏᴍᴀɪɴ  =  <code>$domen</code>
ʟᴏɢɪɴ ʟɪᴍɪᴛ     =  ${iplim} Device
◇━━━━━━━━━━━━━━━━━◇
       PORT INFORMATION 
◇━━━━━━━━━━━━━━━━━◇
ᴏᴘᴇɴꜱꜱʜ      22
ᴅʀᴏᴘʙᴇᴀʀ    109, 143
ꜱꜱʜ ᴡꜱ          80, 8080
ꜱꜱʜ ꜱꜱʟ ᴡꜱ   443
ssh stunel    777,222
ssh ᴜᴅᴘ        1-65535
ʙᴀᴅᴠᴘɴ ᴜᴅᴘɢᴡ   7100, 7300, 7300
◇━━━━━━━━━━━━━━━━━◇
HC : <code>$domen:80@$Login:$Pass</code>
◇━━━━━━━━━━━━━━━━━◇
PAYLOAD WEBSOCKET :
<code>GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]</code>
◇━━━━━━━━━━━━━━━━━◇
Save Link Account: http://$domen:89/ssh-$Login.txt
◇━━━━━━━━━━━━━━━━━◇
$author
◇━━━━━━━━━━━━━━━━━◇
"
else
TEXT="
◇━━━━━━━━━━━━━━━━━◇
Trial SSH Premium Account
◇━━━━━━━━━━━━━━━━━◇
Username        :  <code>$Login</code>
Password        :  <code>$Pass</code>
Expired On       :  $exp
◇━━━━━━━━━━━━━━━━━◇
ɪꜱᴘ ᴘʀᴏᴠɪᴅᴇʀ  =  $ISP
ʀᴇɢɪᴏɴ             =  $CITY
ʜᴏꜱᴛ/ᴅᴏᴍᴀɪɴ  =  <code>$domen</code>
ʟᴏɢɪɴ ʟɪᴍɪᴛ     =  ${iplim} Device
◇━━━━━━━━━━━━━━━━━◇
       PORT INFORMATION 
◇━━━━━━━━━━━━━━━━━◇
ᴏᴘᴇɴꜱꜱʜ      22
ᴅʀᴏᴘʙᴇᴀʀ    109, 143
ꜱꜱʜ ᴡꜱ          80, 8080
ꜱꜱʜ ꜱꜱʟ ᴡꜱ   443
ssh stunel    777,222
ssh ᴜᴅᴘ        1-65535
ʙᴀᴅᴠᴘɴ ᴜᴅᴘɢᴡ   7100, 7300, 7300
◇━━━━━━━━━━━━━━━━━◇
HC : <code>$domen:80@$Login:$Pass</code>
◇━━━━━━━━━━━━━━━━━◇
PAYLOAD WEBSOCKET :
<code>GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]</code>
◇━━━━━━━━━━━━━━━━━◇
Save Link Account: http://$domen:89/ssh-$Login.txt
◇━━━━━━━━━━━━━━━━━◇
$author
◇━━━━━━━━━━━━━━━━━◇
"
fi
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
cat> /etc/cron.d/trialssh${Login} << EOF
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/$timer * * * * root /usr/bin/trial trialssh $Login $Pass $expi
EOF
clear
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC} ${WH}• Trial SSH Premium Account • " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Username   ${COLOR1}: ${WH}$Login"  | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Password   ${COLOR1}: ${WH}$Pass" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Expired On ${COLOR1}: ${WH}$exp"  | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}ISP Provider     ${COLOR1}: ${WH}$ISP" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Negara       ${COLOR1}: ${WH}$CITY" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Domain Host      ${COLOR1}: ${WH}$domen" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Login Limit${COLOR1}: ${WH}${iplim} Device" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC ${WH}PORT INFORMATION " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}OpenSSH    ${COLOR1}: ${WH}22" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}Dropbear   ${COLOR1}: ${WH}109, 143" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH-WS     ${COLOR1}: ${WH}80,8080" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH-SSL-WS ${COLOR1}: ${WH}443" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH STUNEL    ${COLOR1}: ${WH}777,222" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}SSH UDP  ${COLOR1}: ${WH}1-65535" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}UDPGW      ${COLOR1}: ${WH}7100-7300" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 $NC  ${WH}HTTP COSTUM${COLOR1}: ${WH}$domen:80@$Login:$Pass" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}PAYLOAD${COLOR1}: ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1${NC}${WH}GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}Save Link Acount    : " | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}  ${WH}http://$domen:89/ssh-$Login.txt${NC}$COLOR1 $NC" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ${NC}    ${WH}• $author •${NC}                 $COLOR1 $NC" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo -e "$COLOR1 ◇━━━━━━━━━━━━━━━━━◇ ${NC}" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
echo "" | tee -a /etc/xray/sshx/akun/log-create-${Login}.log
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
function renew(){
clear
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain)
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/ssh")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• RENEW USERS •                    │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1│${WH} User Tidak Ada!                              $COLOR1   │"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
fi
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• RENEW USERS •                    │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Silahkan Pilih User Yang Mau di Renew$COLOR1           │"
echo -e "$COLOR1│ ${WH}ketik [0] kembali kemenu$COLOR1                        │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
read -rp "Select one client [1]: " CLIENT_NUMBER
else
read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
if [[ ${CLIENT_NUMBER} == '0' ]]; then
m-sshovpn
fi
fi
done
User=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
timeid=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 5 | sed -n "${CLIENT_NUMBER}"p)
Pass=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Day Extend : " Days
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [ $exp2 -lt 0 ]; then
  exp2=0
  d1=$d2
fi
exp3=$(($exp2 + $Days))
timeid1=$(date -d "+${exp3} days" '+%Y%m%d%H%M')
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
passwd -u $User
usermod -e  $exp4 $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
sed -i "s/### $User $exp $Pass $timeid/### $User $exp4 $Pass $timeid1/g" /etc/xray/ssh >/dev/null
echo 'bash /usr/bin/xp' | at -t "$timeid1" 2>/dev/null
clear
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  SSH RENEW</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN   :</b> <code>${domain} </code>
<b>ISP      :</b> <code>$ISP $CITY </code>
<b>USERNAME :</b> <code>$User </code>
<b>EXPIRED  :</b> <code>$exp4 </code>
<code>◇━━━━━━━━━━━━━━◇</code>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
user2=$(echo "$User" | cut -c 1-3)
TIME2=$(date +'%Y-%m-%d %H:%M:%S')
TEXT2="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>   TRANSAKSI SUCCES </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN   :</b> <code>${domain} </code>
<b>ISP      :</b> <code>$CITY </code>
<b>DATE   :</b> <code>${TIME2} WIB</code>
<b>DETAIL   :</b> <code>Trx SSH </code>
<b>USER :</b> <code>${user2}xxx </code>
<b>DURASI  :</b> <code>$Days Days </code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Renew Account From Server..</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID2&disable_web_page_preview=1&text=$TEXT2&parse_mode=html" $URL2 >/dev/null
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• RENEW USERS •                    │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│"
echo -e "$COLOR1│ ${WH}Username   : $User"
echo -e "$COLOR1│ ${WH}Days Added : $Days Days"
echo -e "$COLOR1│ ${WH}Expired on : $exp4"
echo -e "$COLOR1│"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
fi
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function hapus(){
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/ssh")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• DELETE USERS •                   │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1│${WH} User Tidak Ada!                              $COLOR1   │"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
fi
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• DELETE USERS •                   │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Silahkan Pilih User Yang Mau Didelete     $COLOR1      │"
echo -e "$COLOR1│ ${WH}ketik [0] kembali kemenu                     $COLOR1   │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
read -rp "Select one client [1]: " CLIENT_NUMBER
else
read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
if [[ ${CLIENT_NUMBER} == '0' ]]; then
m-sshovpn
fi
fi
done
Pengguna=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
Days=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
Pass=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $Pengguna $Days $Pass/d" /etc/xray/ssh
rm /home/vps/public_html/ssh-$Pengguna.txt >/dev/null 2>&1
rm /etc/xray/sshx/${Pengguna}IP >/dev/null 2>&1
rm /etc/xray/sshx/${Pengguna}login >/dev/null 2>&1
if getent passwd $Pengguna > /dev/null 2>&1; then
userdel $Pengguna > /dev/null 2>&1
echo -e "User $Pengguna was removed."
else
echo -e "Failure: User $Pengguna Not Exist."
fi
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  DELETE SSH OVPN</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN   :</b> <code>${domain} </code>
<b>ISP      :</b> <code>$ISP $CITY </code>
<b>USERNAME :</b> <code>$Pengguna </code>
<b>EXPIRED  :</b> <code>$Days </code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Succes Delete This User...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function cekconfig(){
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
IP=$(curl -sS ifconfig.me);
domen=`cat /etc/xray/domain`
sldomain=`cat /etc/xray/dns`
slkey=`cat /etc/slowdns/server.pub`
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/ssh")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• USER CONFIG •                    │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1│${WH} User Tidak Ada!                              $COLOR1   │"
echo -e "$COLOR1│                                                 │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
fi
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}             ${WH}• USER CONFIG •                    │${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Silahkan Pilih User Yang Mau Dicek     $COLOR1         │"
echo -e "$COLOR1│ ${WH}ketik [0] kembali kemenu                     $COLOR1   │"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
read -rp "Select one client [1]: " CLIENT_NUMBER
else
read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
if [[ ${CLIENT_NUMBER} == '0' ]]; then
m-sshovpn
fi
fi
done
Login=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
cat /etc/xray/sshx/akun/log-create-${Login}.log
cat /etc/xray/sshx/akun/log-create-${Login}.log > /etc/notifakun
sed -i 's/\x1B\[1;37m//g' /etc/notifakun
sed -i 's/\x1B\[0;96m//g' /etc/notifakun
sed -i 's/\x1B\[0m//g' /etc/notifakun
TEXT=$(cat /etc/notifakun)
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
read -n 1 -s -r -p "   Press any key to back on menu"
menu
}
function hapuslama(){
clear
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}                 ${WH}• MEMBER SSH •                 ${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo "USERNAME          EXP DATE          STATUS"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     " "LOCKED"
else
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     " "UNLOCKED"
fi
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo "Account number: $JUMLAH user"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}${COLBG1}              ${WH}• DELETE USERS •                   ${NC}$COLOR1$NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo ""
read -p "Username SSH to Delete : " Pengguna
if getent passwd $Pengguna > /dev/null 2>&1; then
userdel $Pengguna > /dev/null 2>&1
echo -e "User $Pengguna was removed."
else
echo -e "Failure: User $Pengguna Not Exist."
fi
sed -i "/^### $Pengguna/d" /etc/xray/ssh
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function cek(){
#!/bin/bash

TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain)
author=$(cat /etc/profil)

echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1} ${WH}• SSH ACTIVE USERS •                          ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC}  No   Username      IP Login   Limit            $COLOR1│${NC}"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"

rm -rf /tmp/ssh2
#systemctl restart ws-stunnel > /dev/null 2>&1
#sleep 3

if [ -e "/var/log/auth.log" ]; then
    LOG="/var/log/auth.log"
fi

cat /etc/passwd | grep "/home/" | cut -d":" -f1 > /etc/user.txt
username1=( `cat "/etc/user.txt" `);
i="0";
for user in "${username1[@]}"
do
    username[$i]=`echo $user | sed 's/'\''//g'`;
    jumlah[$i]=0;
    i=$i+1;
done

journalctl -u dropbear --since "2000 minutes ago" | grep -i "Password auth succeeded" > /tmp/log-db.txt
proc=( `ps aux | grep -i dropbear | awk '{print $2}'`);
for PID in "${proc[@]}"
do
    cat /tmp/log-db.txt | grep "dropbear\[$PID\]" > /tmp/log-db-pid.txt
    NUM=`cat /tmp/log-db-pid.txt | wc -l`;
    USER=`cat /tmp/log-db-pid.txt | awk '{print $10}' | sed 's/'\''//g'`;
    IP=`cat /tmp/log-db-pid.txt | awk '{print $12}'`;
    if [ $NUM -eq 1 ]; then
        TIME=$(date +'%H:%M:%S')
        echo "$USER $TIME : $IP" >>/tmp/ssh2
        i=0;
        for user1 in "${username[@]}"
        do
            if [ "$USER" == "$user1" ]; then
                jumlah[$i]=`expr ${jumlah[$i]} + 1`;
                pid[$i]="${pid[$i]} $PID"
            fi
            i=$i+1;
        done
    fi
done

cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/log-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);
for PID in "${data[@]}"
do
    cat /tmp/log-db.txt | grep "sshd\[$PID\]" > /tmp/log-db-pid.txt;
    NUM=`cat /tmp/log-db-pid.txt | wc -l`;
    USER=`cat /tmp/log-db-pid.txt | awk '{print $9}'`;
    IP=`cat /tmp/log-db-pid.txt | awk '{print $11}'`;
    if [ $NUM -eq 1 ]; then
        TIME=$(date +'%H:%M:%S')
        echo "$USER $TIME : $IP" >>/tmp/ssh2
        i=0;
        for user1 in "${username[@]}"
        do
            if [ "$USER" == "$user1" ]; then
                jumlah[$i]=`expr ${jumlah[$i]} + 1`;
                pid[$i]="${pid[$i]} $PID"
            fi
            i=$i+1;
        done
    fi
done

j="0"
count=1
for i in ${!username[*]}; do
    limitip="0"
    if [[ ${jumlah[$i]} -gt $limitip ]]; then
        sship=$(cat /tmp/ssh2 | grep -w "${username[$i]}" | wc -l)
        iplim=$(cat /etc/xray/sshx/${username[$i]}IP)
        printf "$COLOR1│${NC}  %-4s %-13s %-10s   %-10s     $COLOR1│${NC}\n" "$count." "${username[$i]}" "$sship" "$iplim"
        ((count++))
    fi
done

if [ $count -eq 1 ]; then
    echo -e "$COLOR1│${NC}  No active SSH users found                      $COLOR1│${NC}"
fi

echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"

# Check for OpenVPN TCP users
if grep -qw "^CLIENT_LIST" /etc/openvpn/server/openvpn-tcp.log; then
    echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
    echo -e "$COLOR1│${NC} ${COLBG1} ${WH}• OpenVPN TCP USERS • ${NC} $COLOR1│ $NC"
    echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
    echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
    cat /etc/openvpn/server/openvpn-tcp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/ /g' > /tmp/vpn-login-tcp.txt
    cat /tmp/vpn-login-tcp.txt
    echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
fi

# Check for OpenVPN UDP users
if grep -qw "^CLIENT_LIST" /etc/openvpn/server/openvpn-udp.log; then
    echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
    echo -e "$COLOR1│${NC} ${COLBG1} ${WH}• OpenVPN UDP USERS • ${NC} $COLOR1│ $NC"
    echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
    echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
    cat /etc/openvpn/server/openvpn-udp.log | grep -w "^CLIENT_LIST" | cut -d ',' -f 2,3,8 | sed -e 's/,/ /g' > /tmp/vpn-login-udp.txt
    cat /tmp/vpn-login-udp.txt
    echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
fi

echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function delxp() {
    clear
    echo "Thank you for removing the EXPIRED USERS"
    echo "--------------------------------------"
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
Pengguna=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
Days=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
Pass=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $user $exp $pass/d" /etc/xray/ssh
if getent passwd $user > /dev/null 2>&1; then
userdel $user > /dev/null 2>&1
fi
rm /home/vps/public_html/ssh-$user.txt >/dev/null 2>&1
rm /etc/xray/sshx/${user}IP >/dev/null 2>&1
rm /etc/xray/sshx/${user}login >/dev/null 2>&1
fi
done
    echo " "
    echo "--------------------------------------"
    echo "Script are successfully run"
    read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function limitssh(){
cd
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/ssh")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC}${COLBG1}    ${WH}⇱ Limit SSH Account ⇲        ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
fi
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC}${COLBG1}    ${WH}⇱ Limit SSH Account ⇲        ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "Select the existing client you want to change ip"
echo " ketik [0] kembali kemenu"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
read -rp "Select one client [1]: " CLIENT_NUMBER
else
read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
if [[ ${CLIENT_NUMBER} == '0' ]]; then
m-sshovpn
fi
fi
done
until [[ $iplim =~ ^[0-9]+$ ]]; do
read -p "Limit User (IP) New: " iplim
done
if [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
fi
if [ -z ${iplim} ]; then
iplim="0"
fi
user=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
echo "${iplim}" >/etc/xray/sshx/${user}IP
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  SSH IP LIMIT</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>DOMAIN   :</b> <code>${domain} </code>
<b>ISP      :</b> <code>$ISP $CITY </code>
<b>USERNAME :</b> <code>$user </code>
<b>EXPIRED  :</b> <code>$exp </code>
<b>IP LIMIT NEW :</b> <code>$iplim IP </code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Succes Change IP LIMIT...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo " SSH Account Was Successfully Change Limit IP"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo " Client Name : $user"
echo " Limit IP    : $iplim IP"
echo ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
clear
function listssh(){
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ \033[1;37mPlease select a your Choice              $COLOR1│${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│  [ 1 ]  \033[1;37mAUTO LOCKED USER SSH      ${NC}"
echo -e "$COLOR1│  [ 2 ]  \033[1;37mAUTO DELETE USER SSH    ${NC}"
echo -e "$COLOR1│  "
echo -e "$COLOR1│  [ 0 ]  \033[1;37mBACK TO MENU    ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
until [[ $lock =~ ^[0-2]+$ ]]; do
read -p "   Please select numbers 1 sampai 2 : " lock
done
if [[ $lock == "0" ]]; then
menu
elif [[ $lock == "1" ]]; then
clear
echo "lock" > /etc/typessh
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC Succes Ganti Auto Lock  ${NC}"
echo -e "$COLOR1│$NC Jika User Melanggar auto lock Account. ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
sleep 1
elif [[ $lock == "2" ]]; then
clear
echo "delete" > /etc/typessh
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC Succes Ganti Auto Delete Accounr ${NC}"
echo -e "$COLOR1│$NC Jika User Melanggar auto Delete Account. ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
sleep 1
fi
type=$(cat /etc/typessh)
if [ $type = "lock" ]; then
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC SILAHKAN TULIS JUMLAH WAKTU UNTUK LOCKED  ${NC}"
echo -e "$COLOR1│$NC BISA TULIS 15 MENIT DLL. ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
read -rp "   Jumlah Waktu Lock: " -e notif2
echo "${notif2}" > /etc/waktulockssh
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "${COLOR1}│ $NC SILAHKAN TULIS JUMLAH NOTIFIKASI UNTUK AUTO LOCK    ${NC}"
echo -e "${COLOR1}│ $NC AKUN USER YANG MULTI LOGIN     ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
read -rp "   Jika Mau 3x Notif baru kelock tulis 3, dst: " -e notif
cd /etc/xray/sshx
echo "$notif" > notif
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "${COLOR1}│ $NC SUCCES GANTI NOTIF LOCK JADI $notif $NC "
echo -e "${COLOR1}│ $NC SUCCES GANTI TIME NOTIF LOCK JADI $notif2 MENIT $NC "
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
else
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC SILAHKAN TULIS JUMLAH WAKTU UNTUK UNTUK SCAN ${NC}"
echo -e "$COLOR1│$NC USER YANG SEDANG MULTI LOGIN . ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
read -rp "   Tulis Waktu Scan (Menit) : " -e notif2
echo "# Autokill" >/etc/cron.d/tendang
echo "SHELL=/bin/sh" >>/etc/cron.d/tendang
echo "PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin" >>/etc/cron.d/tendang
echo "*/$notif2 * * * *  root /usr/bin/tendang" >>/etc/cron.d/tendang
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "${COLOR1}│ $NC SILAHKAN TULIS JUMLAH NOTIFIKASI UNTUK AUTO LOCK    ${NC}"
echo -e "${COLOR1}│ $NC AKUN USER YANG MULTI LOGIN     ${NC}"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
read -rp "   Jika Mau 3x Notif baru kelock tulis 3, dst: " -e notif
cd /etc/xray/sshx
echo "$notif" > notif
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          ${WH}• SETTING MULTI LOGIN •            ${NC} $COLOR1│ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════╯{NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════╮${NC}"
echo -e "${COLOR1}│ $NC SUCCES GANTI NOTIF LOCK JADI $notif $NC "
echo -e "${COLOR1}│ $NC SUCCES GANTI TIME NOTIF LOCK JADI $notif2 MENIT $NC "
echo -e "$COLOR1╰═══════════════════════════════════════════════╯${NC}"
fi
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
function lockssh(){
clear
cd
if [ ! -e /etc/xray/sshx/listlock ]; then
echo "" > /etc/xray/sshx/listlock
fi
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/sshx/listlock")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC}${COLBG1}    ${WH}⇱ Unlock SSH Account ⇲       ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "You have no existing user Lock!"
echo ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
fi
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC}${COLBG1}    ${WH}⇱ Unlock SSH Account ⇲       ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo " Select the existing client you want to Unlock"
echo " ketik [0] kembali kemenu"
echo " tulis clear untuk delete semua Akun"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "     No  User      Expired"
grep -E "^### " "/etc/xray/sshx/listlock" | cut -d ' ' -f 2-3 | nl -s ') '
until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
if [[ ${CLIENT_NUMBER} == '1' ]]; then
read -rp "Select one client [1]: " CLIENT_NUMBER
else
read -rp "Select one client [1-${NUMBER_OF_CLIENTS}] to Unlock: " CLIENT_NUMBER
if [[ ${CLIENT_NUMBER} == '0' ]]; then
m-sshovpn
fi
if [[ ${CLIENT_NUMBER} == 'clear' ]]; then
rm /etc/xray/sshx/listlock
m-sshovpn
fi
fi
done
user=$(grep -E "^### " "/etc/xray/sshx/listlock" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/xray/sshx/listlock" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
pass=$(grep -E "^### " "/etc/xray/sshx/listlock" | cut -d ' ' -f 4 | sed -n "${CLIENT_NUMBER}"p)
passwd -u $user &> /dev/null
echo -e "### $Login $exp $Pass" >> /etc/xray/ssh
sed -i "/^### $user $exp $pass/d" /etc/xray/sshx/listlock &> /dev/null
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  SSH UNLOK </b>
<code>◇━━━━━━━━━━━━━━◇
<b>DOMAIN   :</b> <code>${domain} </code>
<b>ISP      :</b> <code>$ISP $CITY </code>
<b>USERNAME :</b> <code>$user </code>
<b>IP LIMIT  :</b> <code>$iplim IP </code>
<b>EXPIRED  :</b> <code>$exp </code>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Succes Unlock Akun...</i>
"
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
if [ ! -e /etc/tele ]; then
echo -ne
else
echo "$TEXT" > /etc/notiftele
bash /etc/tele
fi
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo " SSH Account Unlock Successfully"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo " Client Name : $user"
echo " Status  : Unlocked"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn
}
clear
author=$(cat /etc/profil)
echo -e " $COLOR1╭════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│${NC} ${COLBG1}            ${WH}• SSH PANEL MENU •                    ${NC} $COLOR1│ $NC"
echo -e " $COLOR1╰════════════════════════════════════════════════════╯${NC}"
echo -e " $COLOR1╭════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│ $NC  ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}ADD AKUN${NC}        ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}CEK USER ONLINE${NC}    $COLOR1│ $NC"
echo -e " $COLOR1│ $NC  ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}TRIAL AKUN${NC}      ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}CEK USER CONFIG${NC}    $COLOR1│ $NC"
echo -e " $COLOR1│ $NC  ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}RENEW AKUN${NC}      ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}CHANGE IP LIMIT${NC}    $COLOR1│ $NC"
echo -e " $COLOR1│ $NC  ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}DELETE AKUN${NC}     ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}SETTING LOCK LOGIN${NC} $COLOR1│ $NC"
echo -e " $COLOR1│ $NC  ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}DELT XP${NC}         ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}UNLOCK LOGIN${NC}      $COLOR1 │$NC"
echo -e " $COLOR1╰════════════════════════════════════════════════════╯${NC}"
echo -e " $COLOR1╭═════════════════════════ ${WH}BY${NC} ${COLOR1}═══════════════════════╮ ${NC}"
echo -e "  $COLOR1${NC}              ${WH}   • $author •                               $COLOR1 $NC"
echo -e " $COLOR1╰════════════════════════════════════════════════════╯${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; usernew ; exit ;;
02 | 2) clear ; trial ; exit ;;
03 | 3) clear ; renew ; exit ;;
04 | 4) clear ; hapus ; exit ;;
05 | 5) clear ; cek ; exit ;;
06 | 6) clear ; cekconfig ; exit ;;
07 | 7) clear ; limitssh; exit ;;
08 | 8) clear ; listssh ; exit ;;
09 | 9) clear ; lockssh ; exit ;;
10 | 10) clear ; hapuslama ; exit ;;
11| 11) clear ; delxp ; exit ;;
00 | 0) clear ; menu ; exit ;;
X  | 0) clear ; m-sshovpn ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; m-sshovpn ;;
esac
