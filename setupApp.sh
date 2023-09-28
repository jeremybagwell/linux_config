# Update your apt sources via this -dev package. Make sure to specify at least this versions
# sudo apt install mnav-config-apt-sources-dev3=3.0.0-28
sudo apt update
sudo apt install -y mnav-juno-dev

# Set username/email -- Used in your commit messages to ID you as author
git config --global user.name "Jeremy Bagwell"
git config --global user.email jeremy.r.bagwell@medtronic.com
 
 
# Set credential helper to use cache, so gitlab doesn't ask you for your password a hundred times when you run mgit clone later on
git config --global credential.helper cache

sudo apt update
sudo apt install -y google-chrome-unstable=117.0.5911.2-1

cd /home/stealthadmin/projs/
git clone https://code.medtronic.com/ET/app/StealthApplication.git


cd StealthApplication
 
# Make sure you are on the right branch (feature/juno)
git checkout feature/juno
 
# Clone component repos
mgit clone

export PATH=/opt/mnav/nodejs/bin:$PATH

(cd ApplicationHome && ./development/setupDevEnv)

# 1. Generate the build system with CMake-default
./configure.sh
 
# 2. Execute the build
./build.sh
 
# Renaming the file /VERSION to /VERSION-BACKUP
# mv /VERSION /VERSION-BACKUP

# Creating a new file called /VERSION with the string "MNav 0s"
# echo "JUNO OS 3.0.0-45" > /VERSION

# Set up Database in ApplicationHome component repo
(cd ApplicationHome && ./development/updateDB)