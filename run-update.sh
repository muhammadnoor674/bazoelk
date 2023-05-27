#wget https://github.com/muhammadnoor674/
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
clear
echo ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text                 \e[30m[\e[$box CHECK NEW UPDATE\e[30m ]                   \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$below VERSION NOW >> $Info1"
echo -e "   \e[$below STATUS UPDATE >> $sts"
echo -e ""
echo -e "       \e[1;31mWould you like to proceed?\e[0m"
echo ""
echo -e "            \e[0;32m[ Select Option ]\033[0m"
echo -e "     \e[$number [1]\e[m \e[$below Check Script Update Now\e[m"
echo -e "     \e[$number [x]\e[m \e[$below Back To Update Menu\e[m"
echo -e "     \e[$number [y]\e[m \e[$below Back To Main Menu\e[m"
echo -e ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "\e[$line"
echo ""
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script By NYARIGRATISAN...\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/muhammadnoor674/main/update/run-update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -O update "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/update.sh"
wget -O run-update "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/run-update.sh"
wget -O message-ssh "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/message-ssh.sh"
wget -O change-port "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/change.sh"
wget -O system "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/system.sh"
wget -O menu "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/menu.sh"
wget -O add-host "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/add-host.sh"
wget -O check-sc "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main//running.sh"
wget -O certv2ray "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/cert.sh"
wget -O trojaan "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/trojaan.sh"
wget -O xraay "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/xraay.sh"
wget -O xp "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/xp.sh"
wget -O port-xray "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/port-xray.sh"
wget -O themes "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/themes.sh"
wget -O autobackup "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/backupBot.sh"
wget -O backup "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/backup.sh"
wget -O bckp "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/bckp.sh"
wget -O restore "https://raw.githubusercontent.com/muhammadnoor674/bazoelk/main/restore.sh"
chmod +x update
chmod +x run-update
chmod +x message-ssh
chmod +x change-port
chmod +x system
chmod +x menu
chmod +x add-host
chmod +x check-sc
chmod +x certv2ray
chmod +x trojaan
chmod +x xraay
chmod +x xp
chmod +x port-xray
chmod +x themes
chmod +x autobackup
chmod +x backup
chmod +x bckp
chmod +x restore
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
update
;;
y)
clear
menu
;;
*)
clear
echo -e "\e[1;31mPlease Enter Option 1-2 or x & y Only..,Try again, Thank You..\e[0m"
sleep 2
run-update
;;
esac
