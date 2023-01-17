# LinuxConfig
arch-based-distro 

## Some aliases :
> add to .bashrc
``` 
alias bl='sudo rmmod btusb ;sudo modprobe btusb; bluetoothctl'  
alias co='nmcli radio wifi  off; nmcli radio wifi  on' 
```

## dependencies :
> xmonad
``` 
sudo pacman -S xmonad xmonad-contrib xmobar stalonetray \
xcompmgr rofi
``` 
> basic programs
``` 
sudo pacman -S ranger discord caprine redshift feh neofetch picom youtube-dl yay
``` 
