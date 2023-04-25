# Request sudo access
if [ "$EUID" -ne 0 ]; then
  echo "Please run with sudo:"
  echo "sudo $0 $*"
  exit 1
fi

# Clone the repository to the home directory
cd ~
git clone https://github.com/fuckcensorship/v2tool.git

# Change directory to the cloned repository
cd v2tool

# Run the bbr.sh script
chmod +x bbr.sh
sudo ./bbr.sh

# Run the install-pkg.sh script
chmod +x install-pkg.sh
sudo ./install-pkg.sh

# Run the disable-nginx.sh script
chmod +x disable-nginx.sh
sudo ./disable-nginx.sh

# Run the block-torrent.sh script
#chmod +x block-torrent.sh
#sudo ./block-torrent.sh

# Run the iptable.sh script
chmod +x iptable.sh script
sudo ./iptable.sh

# Run the xray installer with WS
chmod +x ./xray/ws.sh
sudo ./xrays/ws.sh

# Run the iptable.sh script
chmod +x iptable.sh
sudo ./iptable.sh

