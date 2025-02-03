#!/bin/bash
sudo pacman -S --needed obsidian godot love mpv steam lutris winetricks remmina libreoffice-fresh signal-desktop krita blender discord kvantum nwg-look gnome-disk-utility gnome-software goverlay protonmail-bridge protonmail-bridge-core neovide prismlauncher thunderbird systray-x-common neovide system-config-printer glab github-cli calc bluetui gdu zoxide #proton-vpn-gtk-app


flatpak install flathub app.zen_browser.zen
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub com.usebottles.bottles
flatpak install flathub com.github.Matoking.protontricks
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub dev.vencord.Vesktop
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.freedesktop.Platform.VulkanLayer.OBSVkCapture/x86_64/24.08
flatpak install flathub com.obsproject.Studio.Plugin.OBSVkCapture/x86_64/stable
flatpak install flathub org.freedesktop.Platform.VulkanLayer.MangoHud/x86_64/24.08
flatpak install flathub org.freedesktop.Platform.VulkanLayer.gamescope/x86_64/24.08
flatpak install flathub org.freedesktop.Platform.VulkanLayer.vkBasalt/x86_64/24.08
flatpak install flathub org.winehq.Wine.DLLs.dxvk/x86_64/stable-23.08
flatpak install flathub com.github.marhkb.Pods 
flatpak override --user com.usebottles.bottles --filesystem=xdg-data/Steam 
flatpak override --user --filesystem=/mnt/raid/SteamLibrary com.github.Matoking.protontricks
