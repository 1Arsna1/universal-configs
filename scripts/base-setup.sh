#!/bin/bash

sudo pacman -S --needed wine-staging pipewire libpipewire pipewire-alsa pipewire-audio pipewire-ffado pipewire-jack pipewire-pulse pipewire-session-manager wireplumber lib32-libpipewire lib32-pipewire lib32-pipewire-jack polkit polkit-qt5 polkit-qt6 lib32-polkit xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-xapp flatpak flatpak-xdg-utils libportal-gtk3 libportal-gtk4 libportal-qt5 libportal-qt6 cups cups-browsed cups-filters cups-pdf cups-pk-helper libcups libcupsfilters python-pycups lib32-libcups gutenprint bluez bluez-cups bluez-libs bluez-qt bluez-qt5 bluez-tools bluez-utils bluez-obex btrfs-progs fzf lsd playerctl pass openssh stow reflector git yarn wget brightnessctl batsignal linux-tools ripgrep gamemode lib32-gamemode mangohud lib32-mangohud gamescope vkd3d lib32-vkd3d sbctl rustup zip unzip npm dkms cabextract yad xdotool xf86-input-wacom xf86-video-sisusb snapper wtype nerd-fonts cmake make meson ninja gtk-engines gtk-engine-murrine libappindicator-gtk3 libappindicator-gtk2 lib32-libappindicator-gtk3 lib32-libappindicator-gtk2 ayatana-ido libayatana-indicator libindicator-gtk2 libindicator-gtk3 lib32-libindicator-gtk2 lib32-libindicator-gtk3 qt5-base qt6-base fish gcr-4 gvfs xdg-user-dirs ly jre21-openjdk jre17-openjdk jre11-openjdk jre8-openjdk jdk-openjdk pyqt6 pyqt5 fd v4l-utils pipewire-v4l2 lib32-v4l-utils lib32-pipewire-v4l2 libcamera libcamera-ipa libcamera-tools pipewire-libcamera cameractrls qt5-multimedia qt6-multimedia bc awk jq

sudo pacman -S --needed --asdeps giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2

sudo pacman -S --needed mesa mesa-demos mesa-utils vulkan-mesa-layers lib32-mesa glu lib32-glu lib32-mesa-demos lib32-mesa-utils lib32-vulkan-mesa-layers spirv-tools vkmark vulkan-devel libva libva-utils lib32-libva libvdpau-va-gl libvdpau lib32-libvdpau vdpauinfo xorg xorg-apps xorg-server xorg-xinit wayland xwaylandvideobridge wayland wayland-protocols xorg-drivers


sudo systemctl enable cups bluetooth sshd ly
systemctl enable --user gamemoded 
sudo usermod -aG gamemode,games $(whoami) 
sudo usermod -s /bin/fish $(whoami)
sudo archlinux-java set java-23-openjdk
