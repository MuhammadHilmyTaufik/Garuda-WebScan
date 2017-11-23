#!/bin/bash 
clear
##User Validation
user=`id | cut -d" " -f1 | cut -d"(" -f2 | cut -d")" -f1`
if [ "$user" != "root" ] 
then
	echo -e "\e[1m\e[31mNOTE: You don't have admin privilegies, execute the script as root.\e[0m\e[0m"
	exit 0
fi


##MENU
mainmenu(){

#banner
echo -e """\e[1m\e[32m

     _   _   _   ______  _        ______  ______   _________   ______ 
    | | | | | | | |     | |      | |     / |  | \ | | | | | \ | |_     
    | | | | | | | |---- | |   _  | |     | |  | | | | | | | | | |---- 
    |_|_|_|_|_/ |_|____ |_|__|_| |_|____ \_|__|_/ |_| |_| |_| |_|____ 
                                                   
                           WELCOME TO GARUDA WEBSCAN
                  Let's Make Your Exploitation And Have Fun
 
                         ********************************
                         * Tools Name :GARUDA WEBSCAN   *
                         * Coded by : Yoshieichiro_01   *
                         * Version : 1.0 (BETA)         *
                         ********************************



\e[0m\e[0m"""
if [ $(id -u) != "0" ]; then

      echo [!]::[Check Dependencies] ;
      sleep 2
      echo [✔]::[Check User]: $USER ;
      sleep 1
      echo [x]::[not root]: you need to be [root] to run this script.;
      echo ""
   	  sleep 1
	  exit


else

   echo [!]::[Check Dependencies]: ;
   sleep 1
   echo [✔]::[Check User]: $USER ;

fi

  ping -c 1 google.com > /dev/null 2>&1
  if [ "$?" != 0 ]

then

    echo [✔]::[Internet Connection]: DONE!;
    echo [x]::[warning]: This Script Needs An Active Internet Connection;
    sleep 2

else

    echo [✔]::[Internet Connection]: connected!;
    sleep 2
fi

mainmenu=("Go To Start" "Quit")
select opt in "${mainmenu[@]}"
do
	if [ "$opt" = "Quit" ]
	then
		clear
		figlet -c Thank You ! ! !
		exit 0
	elif [ "$opt" = "Go To Start" ]
	then
		clear

#banner
echo -e """\e[1m\e[32m
  ____                      _       
 / ___| ____ ____ _   _  __| | ____ 
| |  _ / _  |  __| | | |/ _  |/ _  |
| |_| | (_| | |  | |_| | (_| | (_| |
 \____|\____|_|   \____|\____|\____|
__        __   _    ____                  
\ \      / /__| |__/ ___|  ___ ____ _ __  
 \ \ /\ / / _ \ '_ \___ \ / __/ _  | '_ \ 
  \ V  V /  __/ |_) |__) | (_| (_| | | | |
   \_/\_/ \___|_.__/____/ \___\__,_|_| |_|
                                          
             By Yoshieichiro_01         [V.1]




\e[0m\e[0m"""


		bash webApp.sh
	fi
done
}

#Deploy Functions
if [ -d webApp ]
then
	mainmenu
else
	echo -e "\e[31m\e[1mNOTE: bash setup.sh with ROOT\e[0m\e[0m"
fi



