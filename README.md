# 💜 Catppuccin Lavender Hyprland Dotfiles

So it's just a Hyprland dotfiles setup based on **Catppuccin Mocha (Lavender)** theme by a newbie.
I will be happy to get any commits!

## Dependencies

Download and install dependencies:

```bash
yay -S --needed git hyprland waybar swww rofi-wayland dolphin gwenview mpv \
kio-extras ffmpegthumbs kdegraphics-thumbnailers qt6-imageformats qt6-wayland \
archlinux-xdg-menu nwg-look qt5ct qt6ct kvantum ttf-jetbrains-mono-nerd \
mako hyprlock hypridle wl-clipboard grim slurp hyprpolkitagent \
kvantum-theme-catppuccin-git catppuccin-gtk-theme-mocha \
catppuccin-cursors-mocha papirus-icon-theme-git

Installation
1. Clone Repository
Bash

git clone [https://github.com/andre1ka2010/catppuccin-mocha-lavender-hyprland-arch.git](https://github.com/andre1ka2010/catppuccin-mocha-lavender-hyprland-arch.git) ~/dotfiles
cd ~/dotfiles

2. Copy Dotfiles
Bash

# Copy all config folders to ~/.config/
cp -r * ~/.config/

(Note: This copies everything, including the README, to .config. It's safe, but you can delete extra files later).
3. Setup Scripts & Fixes

Make the wallpaper changer script executable:
Bash

chmod +x ~/.config/hypr/scripts/*

Fix Dolphin menu (without this, videos and photos will not open):
Bash

sudo ln -s /etc/xdg/menus/arch-applications.menu /etc/xdg/menus/applications.menu
kbuildsycoca6 --noincremental

4. Final
Bash

reboot

 Theme Troubleshooting
If themes are not applied automatically:
    Open nwg-look and select Catppuccin-Mocha-Standard-Lavender-Dark.
    Open kvantummanager, select Catppuccin-Mocha-Lavender and click "Use this theme".
