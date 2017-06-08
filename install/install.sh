#!/bin/bash
pwd=$echo pwd

# echo -e '\033[32m 更新和升级软件\033[0m'
# apt-get update
# apt-get upgrade

echo -e '\033[32m 打开ssh服务\033[0m'
service ssh start

echo -e '\033[32m 修改阿里云源\033[0m'
echo -e '\033[33m cp /etc/apt/sources.list /etc/apt/sources.list.bk\033[0m'
cp /etc/apt/sources.list /etc/apt/sources.list.bk
echo -e '\033[33m cp sources.list /etc/apt/sources.list\033[0m'
cp sources.list /etc/apt/sources.list

echo -e '\033[32m 安装fbi，修改开机图片\033[0m'
echo -e '\033[33m apt-get install fbi\033[0m'
apt-get install fbi
echo -e '\033[33m cp asplashscreen /etc/init.d/asplashscreen\033[0m'
cp asplashscreen /etc/init.d/asplashscreen
echo -e '\033[33m cp splash.png /etc/splash.png\033[0m'
cp splash.png /etc/splash.png
echo -e '\033[33m sudo chmod a+x /etc/init.d/asplashscreen\033[0m'
sudo chmod a+x /etc/init.d/asplashscreen
echo -e '\033[33m sudo insserv /etc/init.d/asplashscreen\033[0m'
sudo insserv /etc/init.d/asplashscreen


echo -e '\033[32m 安装python3-pyqt5\033[0m'
sudo apt-get install python3-pyqt5

echo -e '\033[32m 安装python3-configobj\033[0m'
sudo python3 -m pip install configobj

# echo -e '\033[33m 安装cx-freeze\033[0m'
# sudo python3 -m pip install cx-freeze
# sudo pip3 install configobj
echo -e '\033[33m 安装pyinstaller\033[0m'
sudo python3 -m pip install pyinstaller

mkdir git
cd git

echo -e '\033[33m git clone https://git.coding.net/xiongbigboss/PyQt5_stylesheets.git\033[0m'
git clone https://git.coding.net/xiongbigboss/PyQt5_stylesheets.git

echo -e '\033[33m git clone https://git.coding.net/xiongbigboss/qtawesome.git\033[0m'
git clone https://git.coding.net/xiongbigboss/qtawesome.git

echo -e '\033[33m git clone https://git.coding.net/xiongbigboss/nt2000_in.git\033[0m'
git clone https://git.coding.net/xiongbigboss/nt2000_in.git

echo -e '\033[33m install nt2000\033[0m'
cd nt2000_in
git checkout nokey-1
python3 config.py
cd ..

# echo -e '\033[33m git clone https://git.coding.net/xiongbigboss/PersonalDose.git\033[0m'
# git clone https://git.coding.net/xiongbigboss/PersonalDose.git

cd qtawesome
echo -e '\033[33m sudo python3 setup.py install\033[0m'
sudo python3 setup.py install
cd ..
cd PyQt5_stylesheets
echo -e '\033[33m sudo python3 setup.py install\033[0m'
sudo python3 setup.py install
cd ..
cd ..

mv git/ $pwd/nt
