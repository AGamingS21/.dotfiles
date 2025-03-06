# pacman
yay
neofetch
hyprland
waybar
network-manager
network-manager-applet
pauvcontrol
brave
jq
pavucontrol
wl-clipboard
papirus-icon-theme
otf-font-awesome
cliphist
kitty
wofi
nano
neovim
vim
vlc
zsh
zsh-syntax-highlighting
zsh-autosuggestions
blueman
docker
wireshark-qt
nwg-dock-hyprland
gnome-keyring
seahorse
flatpak
libreoffice
spotify-launcher
steam
ansible
cups

# yay
wlogout
dotnet-sdk-bin
visual-studio-code-bin
hyprshot
hyprlock
hypridle
hyprpaper
ttf-cascadia-code-nerd
starship
nwg-look
catppuccin-gtk-theme-mocha
terraform
packer
vault
dbeaver
powershell

# Make zshell the default Shell
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)


# Flatpak config
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install com.discordapp.Discord 
flatpak install flathub com.bitwarden.desktop
flatpak install flathub org.localsend.localsend_app

# docker config
sudo usermod -aG docker $USER

# dotnet configs
dotnet tool install sqlpackage

## vsconfig
## clone repo and run makefile
vsconfig configure

#Private key


# Python packages
#pipx install pywall


# services to enable:
sudo systemctl enable gnome.service
sudo systemctl enable bluetooth.service
sudo systemctl enable --now cups

echo "Reboot PC Now"
