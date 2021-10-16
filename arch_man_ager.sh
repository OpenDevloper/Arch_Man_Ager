welcome() { \
	dialog --colors --title "\Z7\ZbArch_man_ager!" --msgbox "\Z4this script will install essential arch packages and maintain the system!.\\n\\n-shiva mohan (aka hemant kumar game)" 16 60

    dialog --colors --title "\Z7\ZbStay near the machine as you will need to enter a password if you didnt run the script as root!!" --yes-label "Sure!" --no-label "No, exit" --yesno "\Z4we are saying this again but you need to stay near your computer if you would like to make this work and you didn't run the script as an root user." 8 60
    dialog --colors --title "\Z7\ZbUpdates COnfig" --yes-label "Sure!" --no-label "NO. exit please." --yesno "\Z4we are going to install a few packages and edit the /etc/pacman.conf to make things work better! do you want to continue!!!!!?" 8 60
}








welcome || error "User choose to exit."

configureaura() { \
    echo "#########################################################"
    echo "## installing aura package manager ##################### ##"
    echo "#########################################################"
    sudo pacman -S git
    git clone https://aur.archlinux.org/aura-bin.git
    cd aura-bin
    makepkg
    sudo pacman -U aura-bin-3.2.6-1-x86_64.pkg.tar.zst
    
    
}

updatesystem() { \
	echo "#########################################"
	echo "###########Installaing Updates############"
	echo "##########################################"
	sudo pacman -Syyu
	echo "Update completed. moving on!"
}

windowmanagerconfig() { \
	dialog --colors --title "\Z7\zbXorg and Window Manager!" --yes-label "Sure!" --no-label "No, exit." --yesno "\Z4we are going to install the awesome window manager, if you are on a vannila arch install, xorg will be installed as well!" 8 60
}

installawesomexorg() { \
	echo "##################################"
	echo "##########installaing awesome#####"
	sudo pacman -S xorg-server xorg-xinit xterm awesome sddm
	sudo systemctl enable sddm
addrepo || error "Error adding DTOS repo to /etc/pacman.conf."
