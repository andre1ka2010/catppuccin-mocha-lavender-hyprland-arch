# Catppuccin Lavender Hyprland Dotfiles

So it's just a Hyprland dotfiles setup based on **Catppuccin Mocha (Lavender)** theme by a newbie
will be happy to get any commits
## Tutorial
```bash
#1. Download and install dependencies:


yay -S --needed git hyprland waybar swww rofi-wayland dolphin gwenview mpv \
kio-extras ffmpegthumbs kdegraphics-thumbnailers qt6-imageformats qt6-wayland \
archlinux-xdg-menu nwg-look qt5ct qt6ct kvantum ttf-jetbrains-mono-nerd \
mako hyprlock hypridle wl-clipboard grim slurp hyprpolkitagent \
kvantum-theme-catppuccin-git catppuccin-gtk-theme-mocha \
catppuccin-cursors-mocha papirus-icon-theme-git

#Installation
#2. Clone Repository
git clone https://github.com/andre1ka2010/catppuccin-mocha-lavender-hyprland-arch ~/dotfiles
cd ~/dotfiles

#3. Copy Dotfiles
# Copy all config folders to ~/.config/
cp -r * ~/.config/

#(Note: This copies everything, including the README, to .config. It's safe, but you can delete extra files later).
#4. Setup Scripts & Fixes
#Make the wallpaper changer script executable:
chmod +x ~/.config/hypr/scripts/*

#Fix Dolphin menu (without this, videos and photos will not open):
sudo ln -s /etc/xdg/menus/arch-applications.menu /etc/xdg/menus/applications.menu
kbuildsycoca6 --noincremental

#5. Final
reboot
