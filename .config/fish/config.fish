if status is-interactive
    # Commands to run in interactive sessions can go here
  starship init fish | source
  zoxide init fish | source
  clear
  set fish_greeting ""
  #ip
  alias pubip='curl ip.me -4 && curl ip.me -6'
  alias pub4='curl ip.me -4'
  alias pub6='curl ip.me -6'
  alias adb='HOME="$XDG_DATA_HOME"/andoid adb'
  #virt-machines
  alias mntshare='sudo mount -t virtiofs '
  #initramfs & bootloader
  alias regen='sudo mkinitcpio -P && sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo grub-mkconfig -o /boot/efi/EFI/arch/grub.cfg'
  alias grubdate='sudo grub-mkconfig -o /boot/grub/grub.cfg && sudo grub-mkconfig -o /boot/efi/EFI/arch/grub.cfg'
  alias fedoragrub='sudo grub2-mkconfig -o /boot/grub2/grub.cfg && sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg'
  alias initdate='sudo mkinitcpio -P'
  alias xtar='tar -xvf'
  #keys
  alias sshdsa='ssh-keygen -t dsa'
  alias sshrsa='ssh-keygen -b 4096'
  alias sshecd='ssh-keygen -t ecdsa'
  alias sshed='ssh-keygen -t ed25519'
  alias sshsk='ssh-keygen -t ed25519-sk'
  alias gpgreload='gpg-connect-agent reloadagent /bye'
  alias gpgkey='gpg --full-gen-key'
  alias gpgdel='gpg --delete-keys'
  alias gpgsecdel='gpg --delete-secret-keys'
  alias gpgedit='gpg --edit-key'
  alias gpgexpub='gpg --output public.pgp --armor --export'
  alias gpgexpriv='gpg --output private.pgp --armor --export-secret-key'
  alias gpgimp='gpg --import'
  #systemd
  alias sysd='systemctl daemon-reload'
  alias sysad='systemctl enable'
  alias sysrm='systemctl disable'
  alias sysstart='systemctl start'
  alias sysnew='systemctl restart'
  alias sysstop='systemctl stop'
  alias sysgo='systemctl enable --now'
  alias sysstat='systemctl status'
  #general
  alias wg-up='sudo wg-quick up'
  alias wg-down='sudo wg-quick down'
  alias nvidia-setttings='nvidia-settings --config-x$XDG_CONFIG_HOME/nvidia/settings'
  alias nvidiacheck='cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status && cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_suspended_time'
  alias group+='sudo usermod -aG'
  alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'
  alias firezone='firewall-cmd --set-default-zone'
  alias fireport='firewall-cmd --add-port'
  alias fireservice='firewall-cmd --add-service'
  alias fireload='firewall-cmd --reload'
  alias ip='ip -c'
  alias nv='nvim'
  alias vim='nvim'
  alias v='nvim'
  alias ae='autoexec'
  alias fetch='uwufetch'
  alias cat='bat'
  alias hyprland='uwsm start Hyprland'
  #loginctl
  alias logoff='loginctl terminate-user $USER'
  #XDG aliases
  alias yarn='yarn --user-yarnrc "$XDG_CONFIG_HOME"/yarn/config'
  alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
  alias svn='svn --config-dir $XDG_CONFIG_HOME/subversion'
  #git
  alias g='git'
  alias gc='git clone'
  alias gcm='git commit'
  alias gs='git status'
  alias gp='git push'
  alias gpl='git pull'
  alias gst='git stash'
  alias ga='git add'
  alias gall='git add -u'
  alias gb='git branch'
  alias gch='git checkout'
  alias gf='git fetch'
  alias gt='git tag'
  alias gnt='git new tag'
  alias lg='lazygit'
  #file structure
  alias l='lsd -l'
  alias ls='lsd'
  alias la='lsd -a'
  alias lla='lsd -la'
  alias lt='lsd --tree'
  alias cd='z'
  alias ..='z ..'
  alias ...='z ../..'
  alias .3='z ../../..'
  alias .4='z ../../../..'
  alias .5='z ../../../../..'
  alias data='cd $XDG_DATA_HOME'
  alias config='cd $XDG_CONFIG_HOME'
  alias lgr='lsd -l | grep '
  alias lsgr='lsd | grep '
  alias lagr='lsd -a | grep '
  alias llagr='lsd -la | grep '
  alias ltgr='lsd --tree | grep '

  #flatpak
  alias flatin='flatpak install'
  alias flatun='flatpak uninstall'
  alias flatrun='flatpak run'
  alias flatup='flatpak update'
  #pkg-manager
  alias factory-reset='sudo pacman -D --asdeps $(sudo pacman -Qqe) && sudo pacman -D --asexplicit base linux linux-firmware networkmanager grub efibootmgr lvm2 vi vim neovim base-devel linux-headers linux-zen linux-zen-headers fish amd-ucode git openssh'
  alias upgrade='sudo pacman -Syyu && paru -Syyu && flatpak update' #update everything
  alias pacdate='sudo pacman -Syyu' #only update standard pkgs
  alias pardate='paru -Sua --noconfirm' #only update AUR pkgs
  alias unlock='sudo rm /var/lib/pacman/db.lck' #remove pacman lock
  alias cleanup='sudo pacman -Qtdq | sudo pacman -Rns -' #remove orphaned packages
  alias listpkg='pacman -Qq | grep '
  alias listaur='pacman -Qqm'
  alias install='paru --needed -S'
  #mirrorlist
  alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'
  alias mirrord='sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist'
  alias mirrors='sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist'
  alias mirrora='sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist'
  alias mirrornew='mirror && mirrord && mirrors && mirrora'
  #grep with colors
  alias grep='grep --color=auto'
  alias egrep='egrep --color=auto'
  alias fgrep='fgrep --color=auto'
  #adding flags
  alias cp='cp -i'
  alias df='df -h'
  alias free='freem -m'
  #guess what
  alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

end

function fish_user_key_bindings
  fish_vi_key_bindings
end

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i  '$'
  end
end

function nvidia-settings
    command nvidia-settings --config-x$XDG_CONFIG_HOME/nvidia/settings $argv
end

#global variables
set -gx EDITOR nvim
set -gx GPG_TTY (tty)
set -gx PINENTRY_USER_DATA USE_CURSES=1
set -gx SUDO_PROMPT "$(tput setaf 1 bold)Password:$(tput sgr0) "

#setironmental variables (for $HOME)
set -x UID (id -u)
set -x LIBVIRT_DEFAULT_URI qemu:///system
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_RUNTIME_DIR /run/user/$UID
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos
set -x XDG_STATE_HOME $HOME/.local/state/

set -x DATA_HOME $HOME/.local/share
set -x CONFIG_HOME $HOME/.config
set -x CACHE_HOME $HOME/.cache
set -x RUNTIME_DIR /run/user/$UID
set -x DOCUMENTS_DIR $HOME/Documents
set -x DOWNLOAD_DIR $HOME/Downloads
set -x MUSIC_DIR $HOME/Music
set -x PICTURES_DIR $HOME/Pictures
set -x VIDEOS_DIR $HOME/Videos
set -x STATE_HOME $HOME/.local/state/
set -x THEME_DIR $XDG_DATA_HOME/themes
set -x ICON_DIR $XDG_DATA_HOME/icons

#setironmental variables (for $XDG_DATA)
set -x MPLAYER_HOME $XDG_CONFIG_HOME/mplayer
set -x DOTNET_CLI_HOME $XDG_DATA_HOME/dotnet
set -x CARGO_HOME $XDG_DATA_HOME/cargo
#set -x GNUPGHOME $XDG_DATA_HOME/gnupg
#set -x PASSWORD_STORE_DIR $XDG_DATA_HOME/pass
set -x STACK_ROOT $XDG_DATA_HOME/stack/stack
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x NUGET_PACKAGES $XDG_CACHE_HOME/NuGetPackages
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
set -x WINEPREFIX $XDG_DATA_HOME/wine
set -x CUDA_CACHE_PATH $XDG_DATA_HOME/nv
set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -x GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -x W3M_DIR $XDG_DATA_HOME/w3m
#set -x XINITRC $XDG_CONFIG_HOME/X11/xinitrc
#set -x XAUTHORITY $XDG_CONFIG_HOME/X11/Xauthority
set -x XCURSOR_PATH $XDG_DATA_HOME/icons
set -x XICON_PAT $XDG_DATA_HOME/icons
set -x CALCHISTFILE $XDG_CACHE_HOME/calc_history
set -x _JAVA_OPTIONS Djava.util.prefs.userRoot-x $XDG_CONFIG_HOME/java
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
set -x ANDROID_USER_HOME $XDG_DATA_HOME/android
set -x _JAVA_OPTIONS -DJAVA.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
set -x RENPY_PATH_TO_SAVES $XDG_DATA_HOME
#universal variables
set -xU GOPATH $XDG_DATA_HOME/go
set -xU PATH $PATH $GOPATH/bin
set -xU GOBIN $XDG_DATA_HOME/go/bin
set -xU LIBGUESTFS_BACKEND direct
set -xU LIBVIRT_DEFAULT_URI qemu:///system
set -xU SSH_TPM_AGENT_SWTPM 1

#zoxide
set -x _ZO_DATA_DIR $XDG_DATA_HOME
set -x _ZO_ECHO 1
set -x _ZO_RESOLVE_SYMLINKS 1

#fzf
#set -x FZF_DEFAULT_COMMAND
set -x FZF_DEFAILT_OPTS
set -x FTF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/fzf/fzfrc

#gaming
set -x DXVK_CONFIG_FILE $XDG_CONFIG_HOME/dxvk/dxvk.conf
set -x VKBASALT_CONFIG_FILE $XDG_CONFIG_HOME/vkBasalt/vkBasalt.conf
#set -x MANGOHUD_CONFIG $XDG_CONFIG_HOME/MangoHud/MangoHud.conf
#set -x MANGOHUD_CONFIGFILE $XDG_CONFIG_HOME/MangoHud/MangoHud.conf
#set -x MANGOHUD_PRESETSFILE $XDG_CONFIG_HOME/MangoHud/preset.conf
#set -x WINE_FULLSCREEN_FSR 1
#set -x MANGOHUD 1
#set -x MANGOHUD_DLSYM 1
#set -x ENABLE_VKBASALT 1

# Created by `pipx` on 2024-07-24 19:22:55
set PATH $PATH /home/arsna/.local/bin
