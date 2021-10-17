# Arch_Man_Ager
Another arch linux deployment script, this will give you a base set of packages to get started with arch!
what does this script do?
this script will maintain the system by updating all the packages and it will install a window manager + a full desktop environment like config to give you a start in the world of arch linux
it was inspired by dtos\
**Now i am going to explain the script and how it works**\
1. # Welcome 
this piece of code will welcome the user and tell a bit about the script and what it is going to do. it will also warn the user and give them the last chance on wheter to run the script or not!\
2. # configAura \
while the script will not utilize the aura package manager ( aur helper) it will install yay, the name of the function is so because i was trying to implement the code to make aura work but for now the aur git repo of aura is down so i guess that is fine.\
3. # updatesystem
if i am not wrong i dont think it is worth the time explaining what this part of the script does. am i right?\
4. # windowmanager config() \
this particular part of the script is the most important one, when you where eating **BISCUTS** this the sudo pacman --needed --ask 4 -Sy - < pkglist.txt command finished its job\
the main purpose of that command was to install the packages in the pkglist.txt file, now idc go check it yourself. now this part of the script clones the config i shamelessly stole from CHRIS TITUS TECh and pastes it in your ~/.config/awesome file which awesome wm created\
5. # end \
this function will give you a very warm goodbye message as the script is finished.
