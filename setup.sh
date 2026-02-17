#!/bin/bash
: << COMMENT
Be carefull! For the time being it is experimental script!
 
COMMENT
projectDir=$(pwd)
echo "Installing dependencies"
sudo pacman -Syu git alacritty rofi hyprland hyprpaper meson dart-sass stow || exit 1

newRepoDir="~/.hyprexin-desktop-unofficial"
if [[ $projectDir != $newRepoDir ]]; then
	echo "Moving repository to ~/.hyprexin-desktop-unofficial"
        mkdir $newRepoDir
        mv $projectDir $newRepoDir; else
	echo "Cloned dir has correct location"
fi

for dir in $newRepoDir/config; do
	if [ -e ~/.config/$dir ]; then
	        echo "Backuping ~/.config/$dir to ~/.config/$dir.backup"
		mv ~/.config/$dir ~/.config/$dir.backup
	fi
done

echo "creating symlinks with ~/.config directory"

cd $newRepoDir/config

stow -v -t ~/.config .

cd

echo "downloading fennec-bar"

git clone https://github.com/Mozartwa123/fennec-bar.git

cd fennec-bar

chmod +x setup.sh

echo "installing fennec-bar"

./setup.sh

cd

echo "downloading materia transparent theme"

git https://github.com/ckissane/materia-theme-transparent.git

cd materia-theme-transparent/src

echo "applying my patch for materia-theme-transparent"

cp --backup=numbered $newRepoDir/materia_transparent_patch/_theme-color.scss _theme-color.scss

cd ..

echo "building theme"

meson _build

echo "installing theme"

meson install -C _build

echo "Kvantum theme is not installed yet. For this moment you have to do it yourself:(. I will try to fix it:)"

exit 0
