# !/bin/bash

clear
cat core/banner.bnr
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Updating Termux..."
echo
apt-get update -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Upgrading Termux..."
echo
apt-get upgrade -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Installing Python..."
echo
apt-get install python -y
echo
apt-get install python3 -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Installing pip..."
echo
apt-get install python-pip -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Installing figlet..."
echo
apt-get install figlet -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Installing cowsay..."
echo
apt-get install cowsay -y
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Installing lolcat..."
echo
pip install lolcat
echo
pip3 install lolcat
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Setting up Environment..."
rm /data/data/com.termux/files/usr/share/figlet/*.flf > /dev/null 2>&1 &
rm /data/data/com.termux/files/usr/share/cowsay/cows/*.cow > /dev/null 2>&1 &
cp core/fonts/* /data/data/com.termux/files/usr/share/figlet/ > /dev/null 2>&1 &
cp core/banners/* /data/data/com.termux/files/usr/share/cowsay/cows/ > /dev/null 2>&1 &
sleep 2
echo
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] NameLuX tool is installed successfully in your termux."
echo -e "\033[0m\033[38;5;46m[\033[1;37m+\033[0m\033[38;5;46m] Now you can run the tool by \033[1;37mpython namelux.py"
echo
