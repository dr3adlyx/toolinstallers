#!/bin/bash
#
# IMPULSE INSTALLER - by shinigami
NO_FORMAT="\033[0m"
F_BOLD="\033[1m"
C_RED="\033[38;5;9m"

clear
cd ..
echo -e "$C_RED██╗███╗░░░███╗██████╗░██╗░░░██╗██╗░░░░░░██████╗███████╗██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░███████╗██████╗░$NO_FORMAT"
echo -e "$C_RED██║████╗░████║██╔══██╗██║░░░██║██║░░░░░██╔════╝██╔════╝██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██╔════╝██╔══██╗$NO_FORMAT"
echo -e "$C_RED██║██╔████╔██║██████╔╝██║░░░██║██║░░░░░╚█████╗░█████╗░░██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░█████╗░░██████╔╝$NO_FORMAT"
echo -e "$C_RED██║██║╚██╔╝██║██╔═══╝░██║░░░██║██║░░░░░░╚═══██╗██╔══╝░░██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░██╔══╝░░██╔══██╗$NO_FORMAT"
echo -e "$C_RED██║██║░╚═╝░██║██║░░░░░╚██████╔╝███████╗██████╔╝███████╗██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗███████╗██║░░██║$NO_FORMAT"
echo -e "$C_RED╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░░╚═════╝░╚══════╝╚═════╝░╚══════╝╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚══════╝╚═╝░░╚═╝$NO_FORMAT"
echo -e "$C_RED                                                                                                                by shinigami$NO_FORMAT"
sudo apt update
sudo apt install python3 python3-pip git -y
git clone https://github.com/LimerBoy/Impulse
cd Impulse/
pip3 install -r requirements.txt
python3 impulse.py --help
read -p "Do you want to get an Example?>" ANS
if [ $ANS == "yes" ]
then
	python3 impulse.py --method SMS --time 20 --threads 15 --target +380123456789
else
	exit
fi
