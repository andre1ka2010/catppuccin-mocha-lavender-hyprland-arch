So it's just a hyprland dotfiles based on catppuccin mocha lavender theme by newbie
will be happy to get any commits

how to install:
download and install dependencies:
```yay -S --needed git hyprland waybar swww rofi-wayland dolphin gwenview mpv kio-extras ffmpegthumbs kdegraphics-thumbnailers qt6-imageformats qt6-wayland archlinux-xdg-menu nwg-look qt5ct-kde qt6ct-kde kvantum ttf-jetbrains-mono-nerd mako hyprlock hypridle wl-clipboard grim slurp hyprpolkitagent kvantum-theme-catppuccin-git catppuccin-gtk-theme-mocha catppuccin-cursors-mocha papirus-icon-theme-git```
clone repo
```git clone https://github.com/andre1ka2010/catppuccin-mocha-lavender-hyprland-arch/tree/main ~/dotfiles```
```cd ~/dotfiles```
copy dotfiles
```cp -r .config/* ~/.config/```
```cp .config/dolphinrc ~/.config/```
```cp .config/mimeapps.list ~/.config/```
make wallpaper changer script executable
```chmod +x ~/.config/hypr/scripts/*```
without that videos and photos will not open on dolphin
```sudo ln -s /etc/xdg/menus/arch-applications.menu /etc/xdg/menus/applications.menu```
```kbuildsycoca6 --noincremental```
final
```reboot```

If themes are not applied automatically:
    Open ```nwg-look``` and select Catppuccin-Mocha-Standard-Lavender-Dark.
    Open ```kvantumanager```, select Catppuccin-Mocha-Lavender and click "Use this theme".
