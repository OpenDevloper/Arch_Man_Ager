welcome() { \
	dialog --colors --title "\Z7\ZbArch_man_ager!" --msgbox "\Z4this script will install essential arch packages and maintain the system!.\\n\\n-shiva mohan (aka hemant kumar game)" 16 60

    dialog --colors --title "\Z7\ZbStay near the machine as you will need to enter a password if you didnt run the script as root!!" --yes-label "Sure!" --no-label "No, exit" --yesno "\Z4we are saying this again but you need to stay near your computer if you would like to make this work and you didn't run the script as an root user." 8 60
    dialog --colors --title "\Z7\ZbUpdates COnfig" --yes-label "Sure!" --no-label "NO. exit please." --yesno "\Z4we are going to install a few packages and edit the /etc/pacman.conf to make things work better! do you want to continue!!!!!?" 8 60
}

error() { \
	clear; printf "ERROR:\\n%s\\n" "$1" >&2; exit 1;
}





welcome || error "User choose to exit."


configAura() { \
    echo "## Installaing The YAY aur helper ##################### ##"
    echo "#########################################################"
    sudo pacman -S git
    sudo pacman -S go
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg
    sudo pacman -U yay-11.0.2-1-x86_64.pkg.tar.zst
    
    
}



updatesystem() { \
	echo "#########################################"
	echo "###########Installaing Updates############"
	echo "##########################################"
	sudo pacman -Syyu
	echo "Update completed. moving on!"
}

# installing the base packages through the arch linux core repository.



updatesystem || error "Error using Pacman -Syyu to update the system"



windowmanagerconfig() { \
	dialog --colors --title "\Z7\zbXorg and Window Manager!" --yes-label "Sure!" --no-label "No, exit." --yesno "\Z4we are going to install the awesome window manager, if you are on a vannila arch install, xorg will be installed as well!" 8 60
}

windowmanagerconfig || error "User exitted"

sudo pacman --needed --ask 4 -Sy - < pkglist.txt

installawesomexorg() { \
	echo "##################################"
	echo "##########installaing awesome#####"

	yay -S awesome rofi picom i3lock-fancy xclip ttf-roboto polkit-gnome materia-theme lxappearance flameshot pnmixer network-manager-applet xfce4-power-manager qt5-styleplugins papirus-icon-theme -y
	git clone https://github.com/ChrisTitusTech/titus-awesome ~/.config/awesome



}


configAura || error "Shit"

installawesomexorg || error "User Ctrl+C"
