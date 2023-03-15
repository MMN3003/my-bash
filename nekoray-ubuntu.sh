echo "Downloading nekoray 2.19"
wget https://github.com/MatsuriDayo/nekoray/releases/download/2.19/nekoray-2.19-2023-03-08-linux64.zip &&
unzip nekoray-2.19-2023-03-08-linux64.zip && cd nekoray
echo "add lib and plugins to path..."
echo 'LD_LIBRARY_PATH='+`pwd`+'/usr/lib' >> ~/.bashrc
echo 'QT_PLUGIN_PATH='+`pwd`+'/usr/plugins' >> ~/.bashrc
echo "source bashrc"
source ~/.bashrc
echo "install extra libs"
sudo apt install libqt5network5
sudo apt install libqt5svg5
sudo apt install libqt5x11extras5
