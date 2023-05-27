#wget https://github.com/muhammadnoor674/
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
clear
apt install jq curl -y
DOMAIN=nyarigratisan.software
sub=$(</dev/urandom tr -dc a-z0-9 | head -c4)
SUB_DOMAIN=${sub}.nyarigratisan.software
CF_ID=anuybazoelk639@gmail.com
CF_KEY=5fea2f8e2c45da4658778bcd81497c5dfdf33
set -euo pipefail
IP=$(wget -qO- icanhazip.com);
echo "Updating DNS for ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')
echo "Host : $SUB_DOMAIN"
echo "IP=" >> /var/lib/premium-script/ipvps.conf
echo $SUB_DOMAIN > /root/domain
rm -f /root/cf.sh

clear
echo ""
echo -e " \e[1;36mSuccesfully Add your Subdomain\e[0m"
echo -e " \e[0;34m======================================\e[0m"
echo -e " \e[0;33mDomain Name        :\e[0m $DOMAIN"
echo -e " \e[0;33mSubdomain Name     :\e[0m ${sub}"
echo -e " \e[0;33mYour IP Pointing   :\e[0m ${IP}"
echo -e " \e[0;33mSub + Domain (Used):\e[0m ${sub}.$DOMAIN"
echo -e " \e[0;34m======================================\e[0m"
echo ""
echo -e "\e[0;32mDONE...!\e[0m"
echo -e "Script By NYARIGRATISAN"
