#Script Auto Reboot Vps
#wget https://github.com/muhammadnoor674/
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
clear
# Echo Shell
echo ""
echo ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text                 \e[30m[\e[$box UPDATE SCRIPT MENU\e[30m ]                 \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$below VERSION NOW >> $Info1"
echo -e "   \e[$below STATUS UPDATE >> $sts"
echo -e ""
echo -e "     \e[$number 1.\e[m \e[$below Change Banner SSH\e[m"
echo -e "     \e[$number 2.\e[m \e[$below Check Update/New Version Script\e[m"
echo -e ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                                             \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "\e[$line"
read -p "     Select From Options [1-3 or x] :  " port
echo -e ""
case $port in
1)
message-ssh
;;
2)
run-update
;;
x)
clear
menu
;;
*)
clear
echo -e "\e[1;31mPlease enter an correct number, Try again.\e[0m"
sleep 2
update
;;
esac
