#Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#Install Code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

sudo apt-get install net-tools
sudo /opt/mnav/config-networking/scripts/iptablesctl disable

cd ..
git clone https://code.medtronic.com/ET/ns/mnav-remotesupport-visualase


# Json for C++ includes
sudo apt-get install libjsoncpp-dev
sudo ln -s /usr/include/jsoncpp/json/ /usr/include/json

#Access to VPN
sudo apt install openconnect
openconnect --user=bagwej2 --passwd-on-stdin --protocol=nc --authenticate https://developer-amer.medtronic.com/scs

sudo apt-get install virturalbox
sudo apt-get install make
sudo apt install devscripts
sudo apt-get install debhelper

sudo cp -v .bashrc ~/.bashrc

sudo ~/projs/linux_config/setupApp.sh
