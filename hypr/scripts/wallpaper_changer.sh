#!/bin/bash

# --- НАСТРОЙКИ ---
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
ROFI_THEME="$HOME/.config/rofi/catppuccin-lavender.rasi"

# Настройки анимации swww
TRANSITION_TYPE="grow"
TRANSITION_POS="0.9,0.9"
TRANSITION_DURATION="2"
TRANSITION_FPS="60"
# -----------------

# Проверка swww-daemon
if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 1
fi

set_wallpaper() {
    img_path="$1"
    swww img "$img_path" \
        --transition-type "$TRANSITION_TYPE" \
        --transition-pos "$TRANSITION_POS" \
        --transition-duration "$TRANSITION_DURATION" \
        --transition-fps "$TRANSITION_FPS"
}

if [ "$1" == "random" ]; then
    RANDOM_WALL=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | shuf -n 1)
    if [ -n "$RANDOM_WALL" ]; then
        set_wallpaper "$RANDOM_WALL"
        notify-send "Wallpapers" "Случайные обои: $(basename "$RANDOM_WALL")"
    fi
else
    # Генерация списка с иконками для Rofi
    # Формат: "Название_файла\0icon\x1fПуть_к_картинке"
    
    # 1. Получаем список файлов
    # 2. Форматируем для Rofi (добавляем иконку)
    # 3. Запускаем Rofi с твоей темой
    
    SELECTED=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | while read -r img; do
        filename=$(basename "$img")
        echo -en "$filename\0icon\x1f$img\n"
    done | rofi -dmenu -i -p "Wallpapers" -theme "$ROFI_THEME")

    # Если что-то выбрали, устанавливаем
    if [ -n "$SELECTED" ]; then
        FULL_PATH="$WALLPAPER_DIR/$SELECTED"
        set_wallpaper "$FULL_PATH"
    fi
fi
