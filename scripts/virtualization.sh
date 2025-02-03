#!/bin/bash
sudo pacman -S --needed qemu-full qemu-img libvirt virt-install virt-manager virt-viewer edk2-ovmf dnsmasq swtpm guestfs-tools libosinfo dmidecode  ducker cockpit cockpit-files cockpit-machines cockpit-packagekit cockpit-podman cockpit-storaged wireguard-tools networkmanager-openvpn networkmanager openvpn openresolv podman podman-compose crun runc docker
#tuned 
sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
sudo chmod +x "/etc/openvpn/update-resolv-conf"
sudo usermod -aG libvirt,kvm,libvirt-qemu,docker $(whoami)
echo "options kvm_amd nested=1" | sudo tee /etc/modprobe.d/kvm_amd.conf
echo "options kvm_amd sev=1" | sudo tee /etc/modprobe.d/amd-sev.conf
sudo systemctl enable libvirtd cockpit.socket
#sudo systemctl enable --now tuned
#sudo tuned-adm profile desktop
systemctl --user enable --now podman.socket
