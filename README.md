# Hyprexin Desktop Unofficial

## Disclaimer

There are my unofficial dots for hipotetical hyprland desktop for linexin linux distribution. For this moment, the author of Linexin has nothing common with that work (apart from fennec icon and wallpaper from his distro), so all complains address to me, not to the author of distro. I hope, it will the part of linexin project, but I do not promise anything.

## About this project

Linexin is young linux distro based on arch linux, developed by one person - Linux polish youtuber Linexy. I wanted to help him with developing it, at least a little. So I am working on hyprland configuration, that could be usable as one of possible desktops to choose installing linexin. There is a lot of to make it fully functional, but I'll be trying to make the best possible user experience as possible. Please keep in mind, I am a student, during really demanding and depressing computer studies, and that idea was released in scratched during short break beetwen two semesters.

## Elements

The default appereance of hyprland was not changed to much - I decreased gaps beetwen tiles and edge of window, changed the default border gradient (now inactive window is grey-blue, and active has purple to navy gradient). I also added linexin wallpaper, changed appereance of hyprtoolkits to more transparent and purple, some keybindings for fullscreen, changing position of tiles, etc (see hyprland.conf file). The default file manager is thunar (instead of dolphin), because it was easier for me to apply gtk transparent, purple theme instead of qt one. The terminal emulator is alacritty (I wanted foot, but it becomes intransparent in full-screen mode). There are two applications launcher (I will decrease that number) - fuzzel - small runner for quick launch, and rofi for full-screen menu (not wofi - because it has less options and rofi works on wayland quite properly). The heart of configuration, and most demanding part is fennec-bar, avaiable as a separate project (look [here](https://github.com/Mozartwa123/fennec-bar)), written in quickshell. If you want to setup - in materia_transparent_patch directory is modified one file from the [materia transparent theme](https://github.com/ckissane/materia-theme-transparent), If you want to have nice look of thunar, clone repo of this theme, and replace src/_theme-color.scss wich my version of this file in mentioned directory (there are only a couple lines changed compared to oryginal projekt), then build the theme, and set theme as** materia-dark**. There is also kvantum theme (see Dream-Violet-Dark-Kvantum_1) to get similar look in qt apps (oryginal project [here](https://store.kde.org/p/2313866)).

#### More info, setup instruction soon

#### Niedługo readme też będzie dostępne po polsku:)



[See hyprexin demo video!](static/hyprexin-demonstration.mp4)
