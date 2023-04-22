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

# Install Xray with WS
chmod +x /xray/ws.sh
sudo ./xray/ws.sh
