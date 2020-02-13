# Setting ppa for chrome and VSCode
sudo echo deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main > /etc/apt/sources.list.d/google-chrome.list
sudo echo deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main > /etc/apt/sources.list.d/vscode.list

# Retrieving public keys
wget https://dl.google.com/linux/linux_signing_key.pub -O- | sudo apt-key add -
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# Updating and upgrading
sudo apt update && sudo apt upgrade

# Basic software
sudo apt install google-chrome-stable code

# Dev and build tools
sudo apt install git git-lfs repo python3 openjdk-11-jre openjdk-11-jdk ccache gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip python-networkx adb fastboot htop schedtool binutils-multiarch
