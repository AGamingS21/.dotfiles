## Apt Repos
## dotnet 9
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Install Apt software
sudo apt-get update && \
sudo apt install -y \
    dotnet-sdk-9.0 \
    p2